// ignore_for_file: unused_element, unnecessary_cast

import 'target_directory_result_properties_response.dart';

/// Result data returned by getSubscriptionTarDirectory.
class GetSubscriptionTarDirectoryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified ID for the Subscription Changed Directory resource.
  final String? id;
  /// Subscription Name.
  final String? name;
  /// Subscription Changed Target Directory response properties.
  final TargetDirectoryResultPropertiesResponse? properties;
  /// Resource type, Microsoft.Subscription/changeTenantRequest.
  final String? type;

  /// Creates a new [GetSubscriptionTarDirectoryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified ID for the Subscription Changed Directory resource.
  /// [name] Subscription Name.
  /// [properties] Subscription Changed Target Directory response properties.
  /// [type] Resource type, Microsoft.Subscription/changeTenantRequest.
  const GetSubscriptionTarDirectoryResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetSubscriptionTarDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionTarDirectoryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return TargetDirectoryResultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
