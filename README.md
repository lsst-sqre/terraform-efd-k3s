terraform efd-k3s "top level" deployment
===

[![Build Status](https://travis-ci.org/lsst-sqre/terraform-efd-k3s.png)](https://travis-ci.org/lsst-sqre/terraform-efd-k3s)

Deploys an `efd` instance on top of a `k3s` cluster. At this moment the `k3s` cluster is created following
the instructions in [SQR-31](https://sqr-031.lsst.io).

Usage
---

This package is intended to be used as a "top level" deployment, rather than as
a general purpose module, and thus declares provider configuration that
may be inappropriate in a module.

`terragrunt` configuration example:

```terraform
terragrunt = {
  terraform {
    source = "git::https://github.com/lsst-sqre/terraform-efd-k3s.git//?ref=master"
  }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

## Outputs

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

`helm`
---

Note that the `helm` provider is used, which requires an initialized `helm`
repo configuration.

`pre-commit` hooks
---

```bash
go get github.com/segmentio/terraform-docs
pip install --user pre-commit
pre-commit install

# manual run
pre-commit run -a
```

See Also
---

* [`terraform`](https://www.terraform.io/)
* [`terragrunt`](https://github.com/gruntwork-io/terragrunt)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs)
* [`helm`](https://docs.helm.sh/)
* [`pre-commit`](https://github.com/pre-commit/pre-commit)
* [`pre-commit-terraform`](https://github.com/antonbabenko/pre-commit-terraform)
