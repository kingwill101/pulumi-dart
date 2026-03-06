// ignore_for_file: unused_element, unnecessary_cast

import 'managed_integration_runtime_status_response.dart';

/// Result data returned by getIntegrationRuntimeStatus.
class GetIntegrationRuntimeStatusResult {
  /// The integration runtime name.
  final String name;
  /// Integration runtime properties.
  final ManagedIntegrationRuntimeStatusResponse properties;

  /// Creates a new [GetIntegrationRuntimeStatusResult].
  /// [name] The integration runtime name.
  /// [properties] Integration runtime properties.
  const GetIntegrationRuntimeStatusResult({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory GetIntegrationRuntimeStatusResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeStatusResult(
      name: map['name'] as String,
      properties: ManagedIntegrationRuntimeStatusResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

