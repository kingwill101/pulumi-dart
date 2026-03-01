// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupV3 resources.
class GroupV3State {
  /// A description of the group.
  final pulumi.Input<String>? description;
  /// The domain the group belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new group.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupV3State].
  /// [description] A description of the group.
  /// [domainId] The domain the group belongs to.
  /// [name] The name of the group.
  /// [region] The region in which to obtain the V3 Keystone client.
  GroupV3State({
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GroupV3State.fromMap(Map<String, dynamic> map) {
    return GroupV3State(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

