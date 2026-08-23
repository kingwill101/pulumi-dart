// ignore_for_file: unused_element, unnecessary_cast

import 'recovery_plan_properties_response.dart';

/// Result data returned by getReplicationRecoveryPlan.
class GetReplicationRecoveryPlanResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource Location
  final String? location;
  /// Resource Name
  final String name;
  /// The custom details.
  final RecoveryPlanPropertiesResponse properties;
  /// Resource Type
  final String type;

  /// Creates a new [GetReplicationRecoveryPlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] The custom details.
  /// [type] Resource Type
  const GetReplicationRecoveryPlanResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetReplicationRecoveryPlanResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: RecoveryPlanPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
