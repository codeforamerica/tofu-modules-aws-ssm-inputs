# AWS SSM Inputs Module

[![Main Checks][badge-checks]][code-checks] [![GitHub Release][badge-release]][latest-release]

This module provides an interface for retrieving input parameters from AWS
Systems Manager (SSM) Parameter Store. It allows you to easily manage and access
configuration parameters stored in SSM.

## Usage

> [!WARNING]
> The values looked up by this module are assumed to be insecure. Care should be
> used when using the values retrieved by this module in secure contexts.

Add this module to your `main.tf` (or appropriate) file and configure the inputs
to match your desired configuration. For example:

```hcl
module "module_name" {
  source = "github.com/codeforamerica/tofu-modules-aws-ssm-inputs?ref=1.0.0"

  prefix = "/my-project/environment"
  inputs = ["vpc/id", "vpc/private-subnets", "logging/key"]
}
```

Make sure you re-run `tofu init` after adding the module to your configuration.

```bash
tofu init
tofu plan
```

To update the source for this module, pass `-upgrade` to `tofu init`:

```bash
tofu init -upgrade
```

## Inputs

| Name   | Description                                                         | Type     | Default | Required |
|--------|---------------------------------------------------------------------|----------|---------|----------|
| inputs | List of parameters to be read.                                      | `list`   | `"dev"` | yes      |
| prefix | Prefix for all parameters. Should start with a forward slash (`/`). | `string` | `null`  | no       |

## Outputs

| Name   | Description                                   | Type  |
|--------|-----------------------------------------------|-------|
| values | Map of retrieved parameters and their values. | `map` |


## Contributing

Follow the [contributing guidelines][contributing] to contribute to this
repository.

[badge-checks]: https://github.com/codeforamerica/tofu-modules-aws-ssm-inputs/actions/workflows/main.yaml/badge.svg
[badge-release]: https://img.shields.io/github/v/release/codeforamerica/tofu-modules-aws-ssm-inputs?logo=github&label=Latest%20Release
[code-checks]: https://github.com/codeforamerica/tofu-modules-aws-ssm-inputs/actions/workflows/main.yaml
[contributing]: CONTRIBUTING.md
[latest-release]: https://github.com/codeforamerica/tofu-modules-aws-ssm-inputs/releases/latest
