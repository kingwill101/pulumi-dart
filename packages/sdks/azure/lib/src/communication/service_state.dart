// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String>? dataLocation;
  /// The hostname of the Communication Service
  final pulumi.Input<String>? hostname;
  /// The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String>? name;
  /// The primary connection string of the Communication Service.
  final pulumi.Input<String>? primaryConnectionString;
  /// The primary key of the Communication Service.
  final pulumi.Input<String>? primaryKey;
  /// The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary connection string of the Communication Service.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The secondary key of the Communication Service.
  final pulumi.Input<String>? secondaryKey;
  /// A mapping of tags which should be assigned to the Communication Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceState].
  /// [dataLocation] The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created.
  /// [hostname] The hostname of the Communication Service
  /// [name] The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  /// [primaryConnectionString] The primary connection string of the Communication Service.
  /// [primaryKey] The primary key of the Communication Service.
  /// [resourceGroupName] The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  /// [secondaryConnectionString] The secondary connection string of the Communication Service.
  /// [secondaryKey] The secondary key of the Communication Service.
  /// [tags] A mapping of tags which should be assigned to the Communication Service.
  ServiceState({
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
      dataLocation: map['dataLocation'] == null ? null : (map['dataLocation']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

