// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options.dart';
import 'instance_dynamic_tier_options.dart';
import 'instance_maintenance_policy.dart';

/// {@template pulumi_lustre_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_lustre_instance_instance_args_doc}
class InstanceArgs {
  /// IP-based access rules for the Managed Lustre instance. These options
  /// define the root user squash configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessRulesOptions>? accessRulesOptions;
  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `9000` to `7632000`, depending on the `perUnitStorageThroughput`.
  /// See [Performance tiers and maximum storage
  /// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
  /// for specific minimums, maximums, and step sizes for each performance tier.
  final pulumi.Input<String> capacityGib;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A user-readable description of the instance.
  final pulumi.Input<String>? description;
  /// Dynamic tier options for a Managed Lustre instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceDynamicTierOptions>? dynamicTierOptions;
  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  final pulumi.Input<String> filesystem;
  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  final pulumi.Input<bool>? gkeSupportEnabled;
  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  final pulumi.Input<String> instanceId;
  /// The Cloud KMS key name to use for data encryption.
  /// If not set, the instance will use Google-managed encryption keys.
  /// If set, the instance will use customer-managed encryption keys.
  /// The key must be in the same region as the instance.
  /// The key format is:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}
  final pulumi.Input<String>? kmsKey;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Defines a maintenance policy for a resource.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  final pulumi.Input<String> network;
  /// The throughput of the instance in MBps per TiB. Valid values are 125, 250,
  /// 500, 1000.
  /// See [Performance tiers and maximum storage
  /// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
  /// for more information.
  /// If the instance is using the Dynamic tier, this field must not be set or
  /// must be set to zero.
  final pulumi.Input<String>? perUnitStorageThroughput;
  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  final pulumi.Input<String>? placementPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [accessRulesOptions] IP-based access rules for the Managed Lustre instance. These options
  /// [capacityGib] The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A user-readable description of the instance.
  /// [dynamicTierOptions] Dynamic tier options for a Managed Lustre instance.
  /// [filesystem] The filesystem name for this instance. This name is used by client-side
  /// [gkeSupportEnabled] Indicates whether you want to enable support for GKE clients. By default,
  /// [instanceId] The name of the Managed Lustre instance.
  /// [kmsKey] The Cloud KMS key name to use for data encryption.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [maintenancePolicy] Defines a maintenance policy for a resource.
  /// [network] The full name of the VPC network to which the instance is connected.
  /// [perUnitStorageThroughput] The throughput of the instance in MBps per TiB. Valid values are 125, 250,
  /// [placementPolicy] The placement policy name for the instance in the format of
  /// [project] The ID of the project in which the resource belongs.
  const InstanceArgs({
    this.accessRulesOptions,
    required this.capacityGib,
    this.deletionPolicy,
    this.description,
    this.dynamicTierOptions,
    required this.filesystem,
    this.gkeSupportEnabled,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    required this.network,
    this.perUnitStorageThroughput,
    this.placementPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesOptions': ?pulumi.Input.mapOptionalInputValue<InstanceAccessRulesOptions, Map<String, dynamic>>(accessRulesOptions, (value) => value.toMap()),
      'capacityGib': capacityGib,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dynamicTierOptions': ?pulumi.Input.mapOptionalInputValue<InstanceDynamicTierOptions, Map<String, dynamic>>(dynamicTierOptions, (value) => value.toMap()),
      'filesystem': filesystem,
      'gkeSupportEnabled': ?gkeSupportEnabled,
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'network': network,
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
      'placementPolicy': ?placementPolicy,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accessRulesOptions: (() { final guardedValue = map['accessRulesOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAccessRulesOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityGib: pulumi.Input.fromValue(map['capacityGib'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicTierOptions: (() { final guardedValue = map['dynamicTierOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDynamicTierOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filesystem: pulumi.Input.fromValue(map['filesystem'] as String),
      gkeSupportEnabled: (() { final guardedValue = map['gkeSupportEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      perUnitStorageThroughput: (() { final guardedValue = map['perUnitStorageThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementPolicy: (() { final guardedValue = map['placementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
