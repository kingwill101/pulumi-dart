// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_weightsandbiases_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_weightsandbiases_get_instance_args_doc}
class GetInstanceArgs {
  /// Name of the Instance resource
  final pulumi.Input<String> instancename;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstanceArgs].
  /// [instancename] Name of the Instance resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetInstanceArgs({
    required this.instancename,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancename': instancename,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instancename: pulumi.Input.fromValue(map['instancename'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
