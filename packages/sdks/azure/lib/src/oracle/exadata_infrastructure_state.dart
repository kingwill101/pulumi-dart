// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadata_infrastructure_maintenance_window.dart';

/// Input properties used for looking up and filtering ExadataInfrastructure resources.
class ExadataInfrastructureState {
  /// The number of compute servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<int>? computeCount;
  /// The email address used by Oracle to send notifications regarding databases and infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>>? customerContacts;
  /// The database server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? databaseServerType;
  /// The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? displayName;
  /// The Azure Region where the Cloud Exadata Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? location;
  /// One or more `maintenance_window` blocks as defined below. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<ExadataInfrastructureMaintenanceWindow>>? maintenanceWindows;
  /// The name which should be used for this Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the ODB@A Infrastructure should exist. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The shape of the ODB@A infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? shape;
  /// The number of storage servers for the Cloud Exadata Infrastructure. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<int>? storageCount;
  /// The storage server model type of the cloud Exadata infrastructure resource. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String>? storageServerType;
  /// A mapping of tags which should be assigned to the Cloud Exadata Infrastructure.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cloud Exadata Infrastructure zones. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ExadataInfrastructureState].
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
  const ExadataInfrastructureState({
    this.computeCount,
    this.customerContacts,
    this.databaseServerType,
    this.displayName,
    this.location,
    this.maintenanceWindows,
    this.name,
    this.resourceGroupName,
    this.shape,
    this.storageCount,
    this.storageServerType,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCount': ?computeCount,
      'customerContacts': ?customerContacts,
      'databaseServerType': ?databaseServerType,
      'displayName': ?displayName,
      'location': ?location,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<ExadataInfrastructureMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<ExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'shape': ?shape,
      'storageCount': ?storageCount,
      'storageServerType': ?storageServerType,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ExadataInfrastructureState.fromMap(Map<String, dynamic> map) {
    return ExadataInfrastructureState(
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerContacts: (() { final guardedValue = map['customerContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      databaseServerType: (() { final guardedValue = map['databaseServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExadataInfrastructureMaintenanceWindow>(guardedValue, (value) => ExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageServerType: (() { final guardedValue = map['storageServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

