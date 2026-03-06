// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The ID for the database instance.
  final pulumi.Input<String>? instanceId;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// The region in which to create the database. Changing
  /// this creates a new database.
  final pulumi.Input<String>? region;

  /// Creates a new [DatabaseState].
  /// [instanceId] The ID for the database instance.
  /// [name] A unique name for the resource.
  /// [region] The region in which to create the database. Changing
  const DatabaseState({
    this.instanceId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

