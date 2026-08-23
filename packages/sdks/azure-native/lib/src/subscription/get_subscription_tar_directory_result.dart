// ignore_for_file: unused_element, unnecessary_cast

import 'target_directory_result_properties_response.dart';

/// Result data returned by getSubscriptionTarDirectory.
class GetSubscriptionTarDirectoryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified ID for the Subscription Changed Directory resource.
  final String id;
  /// Subscription Name.
  final String name;
  /// Subscription Changed Target Directory response properties.
  final TargetDirectoryResultPropertiesResponse properties;
  /// Resource type, Microsoft.Subscription/changeTenantRequest.
  final String type;

  /// Creates a new [GetSubscriptionTarDirectoryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified ID for the Subscription Changed Directory resource.
  /// [name] Subscription Name.
  /// [properties] Subscription Changed Target Directory response properties.
  /// [type] Resource type, Microsoft.Subscription/changeTenantRequest.
  const GetSubscriptionTarDirectoryResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetSubscriptionTarDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionTarDirectoryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: TargetDirectoryResultPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
