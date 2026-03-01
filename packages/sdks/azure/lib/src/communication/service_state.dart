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
    pulumi.Output<String>? dataLocation,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataLocation = pulumi.Input.asOptionalInput<String>(dataLocation),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dataLocation: map['dataLocation'] == null ? null : pulumi.Output.create<String>(map['dataLocation'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

