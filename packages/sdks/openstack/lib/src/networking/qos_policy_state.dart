// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QosPolicy resources.
class QosPolicyState {
  /// The collection of tags assigned on the QoS policy, which have been
  /// explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;
  /// The time at which QoS policy was created.
  final pulumi.Input<String>? createdAt;
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
  /// The revision number of the QoS policy.
  final pulumi.Input<int>? revisionNumber;
  /// Indicates whether this QoS policy is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// QoS policy.
  final pulumi.Input<bool>? shared;
  /// A set of string tags for the QoS policy.
  final pulumi.Input<List<String>>? tags;
  /// The time at which QoS policy was created.
  final pulumi.Input<String>? updatedAt;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [QosPolicyState].
  /// [allTags] The collection of tags assigned on the QoS policy, which have been
  /// [createdAt] The time at which QoS policy was created.
  /// [description] The human-readable description for the QoS policy.
  /// [isDefault] Indicates whether the QoS policy is default
  /// [name] The name of the QoS policy. Changing this updates the name of
  /// [projectId] The owner of the QoS policy. Required if admin wants to
  /// [region] The region in which to obtain the V2 Networking client.
  /// [revisionNumber] The revision number of the QoS policy.
  /// [shared] Indicates whether this QoS policy is shared across
  /// [tags] A set of string tags for the QoS policy.
  /// [updatedAt] The time at which QoS policy was created.
  /// [valueSpecs] Map of additional options.
  QosPolicyState({
    pulumi.Output<List<String>>? allTags,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? revisionNumber,
    pulumi.Output<bool>? shared,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      allTags = pulumi.Input.asOptionalInput<List<String>>(allTags),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionNumber = pulumi.Input.asOptionalInput<int>(revisionNumber),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': ?allTags,
      'createdAt': ?createdAt,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'revisionNumber': ?revisionNumber,
      'shared': ?shared,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory QosPolicyState.fromMap(Map<String, dynamic> map) {
    return QosPolicyState(
      allTags: map['allTags'] == null ? null : pulumi.Output.create<List<String>>((map['allTags'] as List).cast<String>()),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionNumber: map['revisionNumber'] == null ? null : pulumi.Output.create<int>(map['revisionNumber'] as int),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

