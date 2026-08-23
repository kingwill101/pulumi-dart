// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_get_vpc_args_doc}
/// Arguments for getVpc.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_get_vpc_args_doc}
class GetVpcArgs {
  /// The unique identifier of an existing VPC.
  final pulumi.Input<String>? id;
  /// The name of an existing VPC.
  final pulumi.Input<String>? name;
  /// The DigitalOcean region slug for the VPC's location.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcArgs].
  /// [id] The unique identifier of an existing VPC.
  /// [name] The name of an existing VPC.
  /// [region] The DigitalOcean region slug for the VPC's location.
  const GetVpcArgs({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
