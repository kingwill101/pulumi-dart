// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties.dart';

/// {@template pulumi_storagemover_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_storagemover_connection_args_doc}
class ConnectionArgs {
  /// The name of the Connection resource.
  final pulumi.Input<String?>? connectionName;
  /// Connection properties.
  final pulumi.Input<ConnectionProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [ConnectionArgs].
  /// [connectionName] The name of the Connection resource.
  /// [properties] Connection properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  const ConnectionArgs({
    this.connectionName,
    required this.properties,
    required this.resourceGroupName,
    required this.storageMoverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'properties': pulumi.Input.mapInputValue<ConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ConnectionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Input.fromValue(map['storageMoverName'] as String),
    );
  }
}
