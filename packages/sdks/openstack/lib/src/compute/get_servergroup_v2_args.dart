// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_servergroup_v2_get_servergroup_v2_args_doc}
/// Arguments for getServergroupV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_servergroup_v2_get_servergroup_v2_args_doc}
class GetServergroupV2Args {
  /// The name of the server group.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServergroupV2Args].
  /// [name] The name of the server group.
  /// [region] The region in which to obtain the V2 Compute client.
  GetServergroupV2Args({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetServergroupV2Args.fromMap(Map<String, dynamic> map) {
    return GetServergroupV2Args(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

