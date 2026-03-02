// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options.dart';

/// {@template pulumi_lustre_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_lustre_instance_instance_args_doc}
class InstanceArgs {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessRulesOptions>? accessRulesOptions;
  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `18000` to `954000`, in increments of 9000.
  final pulumi.Input<String> capacityGib;
  /// A user-readable description of the instance.
  final pulumi.Input<String>? description;
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
  /// The KMS key id to use for encryption of the Lustre instance.
  final pulumi.Input<String>? kmsKey;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  final pulumi.Input<String> network;
  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  final pulumi.Input<String> perUnitStorageThroughput;
  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  final pulumi.Input<String>? placementPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [accessRulesOptions] Access control rules for the Lustre instance. Configures default root
  /// [capacityGib] The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// [description] A user-readable description of the instance.
  /// [filesystem] The filesystem name for this instance. This name is used by client-side
  /// [gkeSupportEnabled] Indicates whether you want to enable support for GKE clients. By default,
  /// [instanceId] The name of the Managed Lustre instance.
  /// [kmsKey] The KMS key id to use for encryption of the Lustre instance.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [network] The full name of the VPC network to which the instance is connected.
  /// [perUnitStorageThroughput] The throughput of the instance in MB/s/TiB.
  /// [placementPolicy] The placement policy name for the instance in the format of
  /// [project] The ID of the project in which the resource belongs.
  InstanceArgs({
    this.accessRulesOptions,
    required this.capacityGib,
    this.description,
    required this.filesystem,
    this.gkeSupportEnabled,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    required this.network,
    required this.perUnitStorageThroughput,
    this.placementPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesOptions': ?pulumi.Input.mapOptionalInputValue<InstanceAccessRulesOptions, Map<String, dynamic>>(accessRulesOptions, (value) => value.toMap()),
      'capacityGib': capacityGib,
      'description': ?description,
      'filesystem': filesystem,
      'gkeSupportEnabled': ?gkeSupportEnabled,
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'network': network,
      'perUnitStorageThroughput': perUnitStorageThroughput,
      'placementPolicy': ?placementPolicy,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accessRulesOptions: map['accessRulesOptions'] == null ? null : (InstanceAccessRulesOptions.fromMap((map['accessRulesOptions']! as Map).cast<String, dynamic>())).input(),
      capacityGib: (map['capacityGib'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      filesystem: (map['filesystem'] as String).input(),
      gkeSupportEnabled: map['gkeSupportEnabled'] == null ? null : (map['gkeSupportEnabled']! as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      network: (map['network'] as String).input(),
      perUnitStorageThroughput: (map['perUnitStorageThroughput'] as String).input(),
      placementPolicy: map['placementPolicy'] == null ? null : (map['placementPolicy']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

