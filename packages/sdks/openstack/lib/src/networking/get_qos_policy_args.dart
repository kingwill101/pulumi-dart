// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_qos_policy_get_qos_policy_args_doc}
/// Arguments for getQosPolicy.
/// {@endtemplate}
/// {@macro pulumi_networking_get_qos_policy_get_qos_policy_args_doc}
class GetQosPolicyArgs {
  /// The human-readable description for the QoS policy.
  final pulumi.Input<String>? description;
  /// Whether the QoS policy is default policy or not.
  final pulumi.Input<bool>? isDefault;
  /// The name of the QoS policy.
  final pulumi.Input<String>? name;
  /// The owner of the QoS policy.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to retrieve a QoS policy ID. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// Whether this QoS policy is shared across all projects.
  final pulumi.Input<bool>? shared;
  /// The list of QoS policy tags to filter.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetQosPolicyArgs].
  /// [description] The human-readable description for the QoS policy.
  /// [isDefault] Whether the QoS policy is default policy or not.
  /// [name] The name of the QoS policy.
  /// [projectId] The owner of the QoS policy.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Whether this QoS policy is shared across all projects.
  /// [tags] The list of QoS policy tags to filter.
  GetQosPolicyArgs({
    this.description,
    this.isDefault,
    this.name,
    this.projectId,
    this.region,
    this.shared,
    this.tags,
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
    };
  }

  factory GetQosPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetQosPolicyArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      shared: map['shared'] == null ? null : (map['shared']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

