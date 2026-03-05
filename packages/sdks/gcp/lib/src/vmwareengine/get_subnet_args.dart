// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_subnet_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_subnet_get_subnet_args_doc}
class GetSubnetArgs {
  /// Name of the resource.
  /// UserDefined subnets are named in the format of "service-n", where n ranges from 1 to 5.
  /// Management subnets have arbitary names including "vmotion", "vsan", "system-management" etc. More details about subnet names can be found on the cloud console.
  final pulumi.Input<String> name;
  /// The resource name of the private cloud that this subnet belongs.
  final pulumi.Input<String> parent;

  /// Creates a new [GetSubnetArgs].
  /// [name] Name of the resource.
  /// [parent] The resource name of the private cloud that this subnet belongs.
  GetSubnetArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': parent,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

