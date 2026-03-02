// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_confidential_instance_config_response.dart';
import 'gce_shielded_instance_config_response.dart';

/// A runtime using a Compute Engine instance.
class GceInstanceResponse {
  /// Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `30` GB. Defaults to `50` GB.
  final pulumi.Input<int> bootDiskSizeGb;
  /// Optional. A set of Compute Engine Confidential VM instance options.
  final pulumi.Input<GceConfidentialInstanceConfigResponse> confidentialInstanceConfig;
  /// Optional. When set to true, disables public IP addresses for VMs. If you disable public IP addresses, you must set up Private Google Access or Cloud NAT on your network. If you use Private Google Access and you use `private.googleapis.com` or `restricted.googleapis.com` for Container Registry and Artifact Registry, make sure that you set up DNS records for domains `*.gcr.io` and `*.pkg.dev`. Defaults to false (VMs have public IP addresses).
  final pulumi.Input<bool> disablePublicIpAddresses;
  /// Optional. Whether to enable nested virtualization on Cloud Workstations VMs created under this workstation configuration. Nested virtualization lets you run virtual machine (VM) instances inside your workstation. Before enabling nested virtualization, consider the following important considerations. Cloud Workstations instances are subject to the [same restrictions as Compute Engine instances](https://cloud.google.com/compute/docs/instances/nested-virtualization/overview#restrictions): * **Organization policy**: projects, folders, or organizations may be restricted from creating nested VMs if the **Disable VM nested virtualization** constraint is enforced in the organization policy. For more information, see the Compute Engine section, [Checking whether nested virtualization is allowed](https://cloud.google.com/compute/docs/instances/nested-virtualization/managing-constraint#checking_whether_nested_virtualization_is_allowed). * **Performance**: nested VMs might experience a 10% or greater decrease in performance for workloads that are CPU-bound and possibly greater than a 10% decrease for workloads that are input/output bound. * **Machine Type**: nested virtualization can only be enabled on workstation configurations that specify a machine_type in the N1 or N2 machine series. * **GPUs**: nested virtualization may not be enabled on workstation configurations with accelerators. * **Operating System**: Because [Container-Optimized OS](https://cloud.google.com/compute/docs/images/os-details#container-optimized_os_cos) does not support nested virtualization, when nested virtualization is enabled, the underlying Compute Engine VM instances boot from an [Ubuntu LTS](https://cloud.google.com/compute/docs/images/os-details#ubuntu_lts) image.
  final pulumi.Input<bool> enableNestedVirtualization;
  /// Optional. The type of machine to use for VM instances—for example, `"e2-standard-4"`. For more information about machine types that Cloud Workstations supports, see the list of [available machine types](https://cloud.google.com/workstations/docs/available-machine-types).
  final pulumi.Input<String> machineType;
  /// Optional. The number of VMs that the system should keep idle so that new workstations can be started quickly for new users. Defaults to `0` in the API.
  final pulumi.Input<int> poolSize;
  /// Number of instances currently available in the pool for faster workstation startup.
  final pulumi.Input<int> pooledInstances;
  /// Optional. The email address of the service account for Cloud Workstations VMs created with this configuration. When specified, be sure that the service account has `logginglogEntries.create` permission on the project so it can write logs out to Cloud Logging. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. If you as the administrator want to be able to `ssh` into the underlying VM, you need to set this value to a service account for which you have the `iam.serviceAccounts.actAs` permission. Conversely, if you don't want anyone to be able to `ssh` into the underlying VM, use a service account where no one has that permission. If not set, VMs run with a service account provided by the Cloud Workstations service, and the image must be publicly accessible.
  final pulumi.Input<String> serviceAccount;
  /// Optional. Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  final pulumi.Input<List<String>> serviceAccountScopes;
  /// Optional. A set of Compute Engine Shielded instance options.
  final pulumi.Input<GceShieldedInstanceConfigResponse> shieldedInstanceConfig;
  /// Optional. Network tags to add to the Compute Engine VMs backing the workstations. This option applies [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags) to VMs created with this configuration. These network tags enable the creation of [firewall rules](https://cloud.google.com/workstations/docs/configure-firewall-rules).
  final pulumi.Input<List<String>> tags;

  /// Creates a new [GceInstanceResponse].
  /// [bootDiskSizeGb] Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `30` GB. Defaults to `50` GB.
  /// [confidentialInstanceConfig] Optional. A set of Compute Engine Confidential VM instance options.
  /// [disablePublicIpAddresses] Optional. When set to true, disables public IP addresses for VMs. If you disable public IP addresses, you must set up Private Google Access or Cloud NAT on your network. If you use Private Google Access and you use `private.googleapis.com` or `restricted.googleapis.com` for Container Registry and Artifact Registry, make sure that you set up DNS records for domains `*.gcr.io` and `*.pkg.dev`. Defaults to false (VMs have public IP addresses).
  /// [enableNestedVirtualization] Optional. Whether to enable nested virtualization on Cloud Workstations VMs created under this workstation configuration. Nested virtualization lets you run virtual machine (VM) instances inside your workstation. Before enabling nested virtualization, consider the following important considerations. Cloud Workstations instances are subject to the [same restrictions as Compute Engine instances](https://cloud.google.com/compute/docs/instances/nested-virtualization/overview#restrictions): * **Organization policy**: projects, folders, or organizations may be restricted from creating nested VMs if the **Disable VM nested virtualization** constraint is enforced in the organization policy. For more information, see the Compute Engine section, [Checking whether nested virtualization is allowed](https://cloud.google.com/compute/docs/instances/nested-virtualization/managing-constraint#checking_whether_nested_virtualization_is_allowed). * **Performance**: nested VMs might experience a 10% or greater decrease in performance for workloads that are CPU-bound and possibly greater than a 10% decrease for workloads that are input/output bound. * **Machine Type**: nested virtualization can only be enabled on workstation configurations that specify a machine_type in the N1 or N2 machine series. * **GPUs**: nested virtualization may not be enabled on workstation configurations with accelerators. * **Operating System**: Because [Container-Optimized OS](https://cloud.google.com/compute/docs/images/os-details#container-optimized_os_cos) does not support nested virtualization, when nested virtualization is enabled, the underlying Compute Engine VM instances boot from an [Ubuntu LTS](https://cloud.google.com/compute/docs/images/os-details#ubuntu_lts) image.
  /// [machineType] Optional. The type of machine to use for VM instances—for example, `"e2-standard-4"`. For more information about machine types that Cloud Workstations supports, see the list of [available machine types](https://cloud.google.com/workstations/docs/available-machine-types).
  /// [poolSize] Optional. The number of VMs that the system should keep idle so that new workstations can be started quickly for new users. Defaults to `0` in the API.
  /// [pooledInstances] Number of instances currently available in the pool for faster workstation startup.
  /// [serviceAccount] Optional. The email address of the service account for Cloud Workstations VMs created with this configuration. When specified, be sure that the service account has `logginglogEntries.create` permission on the project so it can write logs out to Cloud Logging. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. If you as the administrator want to be able to `ssh` into the underlying VM, you need to set this value to a service account for which you have the `iam.serviceAccounts.actAs` permission. Conversely, if you don't want anyone to be able to `ssh` into the underlying VM, use a service account where no one has that permission. If not set, VMs run with a service account provided by the Cloud Workstations service, and the image must be publicly accessible.
  /// [serviceAccountScopes] Optional. Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  /// [shieldedInstanceConfig] Optional. A set of Compute Engine Shielded instance options.
  /// [tags] Optional. Network tags to add to the Compute Engine VMs backing the workstations. This option applies [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags) to VMs created with this configuration. These network tags enable the creation of [firewall rules](https://cloud.google.com/workstations/docs/configure-firewall-rules).
  GceInstanceResponse({
    required this.bootDiskSizeGb,
    required this.confidentialInstanceConfig,
    required this.disablePublicIpAddresses,
    required this.enableNestedVirtualization,
    required this.machineType,
    required this.poolSize,
    required this.pooledInstances,
    required this.serviceAccount,
    required this.serviceAccountScopes,
    required this.shieldedInstanceConfig,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': bootDiskSizeGb,
      'confidentialInstanceConfig': pulumi.Input.mapInputValue<GceConfidentialInstanceConfigResponse, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'disablePublicIpAddresses': disablePublicIpAddresses,
      'enableNestedVirtualization': enableNestedVirtualization,
      'machineType': machineType,
      'poolSize': poolSize,
      'pooledInstances': pooledInstances,
      'serviceAccount': serviceAccount,
      'serviceAccountScopes': serviceAccountScopes,
      'shieldedInstanceConfig': pulumi.Input.mapInputValue<GceShieldedInstanceConfigResponse, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GceInstanceResponse.fromMap(Map<String, dynamic> map) {
    return GceInstanceResponse(
      bootDiskSizeGb: (map['bootDiskSizeGb'] as int).input(),
      confidentialInstanceConfig: (GceConfidentialInstanceConfigResponse.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      disablePublicIpAddresses: (map['disablePublicIpAddresses'] as bool).input(),
      enableNestedVirtualization: (map['enableNestedVirtualization'] as bool).input(),
      machineType: (map['machineType'] as String).input(),
      poolSize: (map['poolSize'] as int).input(),
      pooledInstances: (map['pooledInstances'] as int).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      serviceAccountScopes: ((map['serviceAccountScopes'] as List).cast<String>()).input(),
      shieldedInstanceConfig: (GceShieldedInstanceConfigResponse.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

