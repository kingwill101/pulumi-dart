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
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<List<String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

