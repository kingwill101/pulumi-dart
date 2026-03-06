// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_group_v3_group_v3_args_doc}
/// The set of arguments for GroupV3.
/// {@endtemplate}
/// {@macro pulumi_identity_group_v3_group_v3_args_doc}
class GroupV3Args {
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

  /// Creates a new [GroupV3Args].
  /// [description] A description of the group.
  /// [domainId] The domain the group belongs to.
  /// [name] The name of the group.
  /// [region] The region in which to obtain the V3 Keystone client.
  const GroupV3Args({
    this.description,
    this.domainId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GroupV3Args.fromMap(Map<String, dynamic> map) {
    return GroupV3Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

