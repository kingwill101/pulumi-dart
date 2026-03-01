// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_identity_get_group_get_group_args_doc}
class GetGroupArgs {
  /// The domain the group belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the group.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetGroupArgs].
  /// [domainId] The domain the group belongs to.
  /// [name] The name of the group.
  /// [region] The region in which to obtain the V3 Keystone client.
  GetGroupArgs({
    pulumi.Output<String>? domainId,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'name': name,
      'region': ?region,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

