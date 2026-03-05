// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_get_vpc_args_doc}
/// Arguments for getVpc.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_get_vpc_args_doc}
class GetVpcArgs {
  /// The unique id of this VPC.
  final pulumi.Input<String> id;

  /// Creates a new [GetVpcArgs].
  /// [id] The unique id of this VPC.
  GetVpcArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

