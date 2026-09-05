// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String?>? dataLocation;
  /// The hostname of the Communication Service
  final pulumi.Input<String?>? hostname;
  /// The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String?>? name;
  /// The primary connection string of the Communication Service.
  final pulumi.Input<String?>? primaryConnectionString;
  /// The primary key of the Communication Service.
  final pulumi.Input<String?>? primaryKey;
  /// The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The secondary connection string of the Communication Service.
  final pulumi.Input<String?>? secondaryConnectionString;
  /// The secondary key of the Communication Service.
  final pulumi.Input<String?>? secondaryKey;
  /// A mapping of tags which should be assigned to the Communication Service.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServiceState].
  /// [dataLocation] The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Changing this forces a new Communication Service to be created.
  /// [hostname] The hostname of the Communication Service
  /// [name] The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  /// [primaryConnectionString] The primary connection string of the Communication Service.
  /// [primaryKey] The primary key of the Communication Service.
  /// [resourceGroupName] The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  /// [secondaryConnectionString] The secondary connection string of the Communication Service.
  /// [secondaryKey] The secondary key of the Communication Service.
  /// [tags] A mapping of tags which should be assigned to the Communication Service.
  const ServiceState({
    this.dataLocation,
    this.hostname,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': ?dataLocation,
      'hostname': ?hostname,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
