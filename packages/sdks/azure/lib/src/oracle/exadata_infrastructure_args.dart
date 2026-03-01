// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadata_infrastructure_maintenance_window.dart';

/// {@template pulumi_oracle_exadata_infrastructure_exadata_infrastructure_args_doc}
/// The set of arguments for ExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_oracle_exadata_infrastructure_exadata_infrastructure_args_doc}
class ExadataInfrastructureArgs {
  /// The number of compute servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<int> computeCount;
  /// The email address used by Oracle to send notifications regarding databases and infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>>? customerContacts;
  /// The database server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? databaseServerType;
  /// The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String> displayName;
  /// The Azure Region where the Cloud Exadata Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? location;
  /// One or more `maintenance_window` blocks as defined below. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<ExadataInfrastructureMaintenanceWindow>>? maintenanceWindows;
  /// The name which should be used for this Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the ODB@A Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The shape of the ODB@A infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String> shape;
  /// The number of storage servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<int> storageCount;
  /// The storage server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? storageServerType;
  /// A mapping of tags which should be assigned to the Cloud Exadata Infrastructure.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cloud Exadata Infrastructure zones. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [ExadataInfrastructureArgs].
  /// [computeCount] The number of compute servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [customerContacts] The email address used by Oracle to send notifications regarding databases and infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [databaseServerType] The database server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [displayName] The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [location] The Azure Region where the Cloud Exadata Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [maintenanceWindows] One or more `maintenance_window` blocks as defined below. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [name] The name which should be used for this Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [resourceGroupName] The name of the Resource Group where the ODB@A Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [shape] The shape of the ODB@A infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [storageCount] The number of storage servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [storageServerType] The storage server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [tags] A mapping of tags which should be assigned to the Cloud Exadata Infrastructure.
  /// [zones] Cloud Exadata Infrastructure zones. Changing this forces a new Cloud Exadata Infrastructure to be created.
  ExadataInfrastructureArgs({
    required pulumi.Output<int> computeCount,
    pulumi.Output<List<String>>? customerContacts,
    pulumi.Output<String>? databaseServerType,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? location,
    pulumi.Output<List<ExadataInfrastructureMaintenanceWindow>>? maintenanceWindows,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shape,
    required pulumi.Output<int> storageCount,
    pulumi.Output<String>? storageServerType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<List<String>> zones,
  }) :
      computeCount = pulumi.Input.asInput<int>(computeCount),
      customerContacts = pulumi.Input.asOptionalInput<List<String>>(customerContacts),
      databaseServerType = pulumi.Input.asOptionalInput<String>(databaseServerType),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindows = pulumi.Input.asOptionalInput<List<ExadataInfrastructureMaintenanceWindow>>(maintenanceWindows),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shape = pulumi.Input.asInput<String>(shape),
      storageCount = pulumi.Input.asInput<int>(storageCount),
      storageServerType = pulumi.Input.asOptionalInput<String>(storageServerType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCount': computeCount,
      'customerContacts': ?customerContacts,
      'databaseServerType': ?databaseServerType,
      'displayName': displayName,
      'location': ?location,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<ExadataInfrastructureMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<ExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'shape': shape,
      'storageCount': storageCount,
      'storageServerType': ?storageServerType,
      'tags': ?tags,
      'zones': zones,
    };
  }

  factory ExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return ExadataInfrastructureArgs(
      computeCount: pulumi.Output.create<int>(map['computeCount'] as int),
      customerContacts: map['customerContacts'] == null ? null : pulumi.Output.create<List<String>>((map['customerContacts'] as List).cast<String>()),
      databaseServerType: map['databaseServerType'] == null ? null : pulumi.Output.create<String>(map['databaseServerType'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindows: map['maintenanceWindows'] == null ? null : pulumi.Output.create<List<ExadataInfrastructureMaintenanceWindow>>(pulumi.Input.decodeList<ExadataInfrastructureMaintenanceWindow>(map['maintenanceWindows'], (value) => ExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shape: pulumi.Output.create<String>(map['shape'] as String),
      storageCount: pulumi.Output.create<int>(map['storageCount'] as int),
      storageServerType: map['storageServerType'] == null ? null : pulumi.Output.create<String>(map['storageServerType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

