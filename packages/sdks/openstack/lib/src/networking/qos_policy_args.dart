// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_qos_policy_qos_policy_args_doc}
/// The set of arguments for QosPolicy.
/// {@endtemplate}
/// {@macro pulumi_networking_qos_policy_qos_policy_args_doc}
class QosPolicyArgs {
  /// The human-readable description for the QoS policy.
  /// Changing this updates the description of the existing QoS policy.
  final pulumi.Input<String>? description;
  /// Indicates whether the QoS policy is default
  /// QoS policy or not. Changing this updates the default status of the existing
  /// QoS policy.
  final pulumi.Input<bool>? isDefault;
  /// The name of the QoS policy. Changing this updates the name of
  /// the existing QoS policy.
  final pulumi.Input<String>? name;
  /// The owner of the QoS policy. Required if admin wants to
  /// create a QoS policy for another project. Changing this creates a new QoS policy.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron Qos policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// QoS policy.
  final pulumi.Input<String>? region;
  /// Indicates whether this QoS policy is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// QoS policy.
  final pulumi.Input<bool>? shared;
  /// A set of string tags for the QoS policy.
  final pulumi.Input<List<String>>? tags;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [QosPolicyArgs].
  /// [description] The human-readable description for the QoS policy.
  /// [isDefault] Indicates whether the QoS policy is default
  /// [name] The name of the QoS policy. Changing this updates the name of
  /// [projectId] The owner of the QoS policy. Required if admin wants to
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Indicates whether this QoS policy is shared across
  /// [tags] A set of string tags for the QoS policy.
  /// [valueSpecs] Map of additional options.
  QosPolicyArgs({
    this.description,
    this.isDefault,
    this.name,
    this.projectId,
    this.region,
    this.shared,
    this.tags,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tags': ?tags,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory QosPolicyArgs.fromMap(Map<String, dynamic> map) {
    return QosPolicyArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
    );
  }
}

