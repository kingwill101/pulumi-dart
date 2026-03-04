// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasemigration_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_databasemigration_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Specify the name of the database migration service.
  final pulumi.Input<String> name;

  /// Specifies the Name of the Resource Group within which the database migration service exists
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServiceArgs].
  /// [name] Specify the name of the database migration service.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the database migration service exists
  GetServiceArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
