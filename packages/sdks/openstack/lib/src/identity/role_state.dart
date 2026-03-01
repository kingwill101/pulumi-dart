// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// The domain the role belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the role.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Role.
  final pulumi.Input<String>? region;

  /// Creates a new [RoleState].
  /// [domainId] The domain the role belongs to.
  /// [name] The name of the role.
  /// [region] The region in which to obtain the V3 Keystone client.
  RoleState({
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

