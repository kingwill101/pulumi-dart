// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance.dart';

/// Result data returned by getDatabaseInstances.
class GetDatabaseInstancesResult {
  final String? databaseVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetDatabaseInstancesInstance>? instances;
  final String? project;
  final String? region;
  final String? state;
  final String? tier;
  final String? zone;

  /// Creates a new [GetDatabaseInstancesResult].
  /// [databaseVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [tier] Optional.
  /// [zone] Optional.
  const GetDatabaseInstancesResult({
    this.databaseVersion,
    this.id,
    this.instances,
    this.project,
    this.region,
    this.state,
    this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': ?databaseVersion,
      'id': ?id,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstancesInstance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'tier': ?tier,
      'zone': ?zone,
    };
  }

  factory GetDatabaseInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesResult(
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstancesInstance>(guardedValue, (value) => GetDatabaseInstancesInstance.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
