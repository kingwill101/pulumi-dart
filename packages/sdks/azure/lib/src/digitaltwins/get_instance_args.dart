// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The name of this Digital Twins instance.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Digital Twins instance exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstanceArgs].
  /// [name] The name of this Digital Twins instance.
  /// [resourceGroupName] The name of the Resource Group where the Digital Twins instance exists.
  const GetInstanceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
