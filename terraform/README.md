# Terraform scripts to create VMs in DigitalOcean cloud provider

## Подготовка

##### Установка terraform с помощью [tgenv](https://github.com/tfutils/tfenv)

Устанавливаем версию terraform из файла ([.terraform-version](.terraform-version)).

```shell
$ tfenv install
```

## Запуск VMs

Получить DigitalOcean Access Token: [Control Panel](https://cloud.digitalocean.com/) -> `API` -> `Generate New Token`.

```shell
$ echo 'do_token = "<DigitalOcean Token>"' | tee vars.auto.tfvars > /dev/null

$ terraform plan --out main.tfplan

$ terraform apply main.tfplan
```

Создаются 3 VM:

* Master `master.romanow-alex.ru`
* Worker-1 `worker-1.romanow-alex.ru`
* Worker-2 `worker-2.romanow-alex.ru`

## Обновление описания модуля

Конфигурация [terraform-docs](https://terraform-docs.io/) находится в [.terraform-docs.yml](.terraform-docs.yml).

```shell
$ terraform-docs markdown table .
```

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.23 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | DigitalOcean access token | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | VM size | `string` | `"s-1vcpu-2gb"` | no |
| <a name="input_vm_region"></a> [vm\_region](#input\_vm\_region) | VM region | `string` | `"ams3"` | no |
| <a name="input_names"></a> [names](#input\_names) | VM names | `list(string)` | ```[ "master", "worker-1", "worker-2" ]``` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Base domain name | `string` | `"romanow-alex.ru"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip_address"></a> [instance\_ip\_address](#output\_instance\_ip\_address) | VM ip addresses |
<!-- END_TF_DOCS -->