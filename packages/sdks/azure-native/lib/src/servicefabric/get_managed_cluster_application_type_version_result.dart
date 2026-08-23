// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getManagedClusterApplicationTypeVersion.
class GetManagedClusterApplicationTypeVersionResult {
  /// The URL to the application package
  final String appPackageUrl;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource identifier.
  final String id;
  /// Resource location depends on the parent resource.
  final String? location;
  /// Azure resource name.
  final String name;
  /// The current deployment or provisioning state, which only appears in the response
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;

  /// Creates a new [GetManagedClusterApplicationTypeVersionResult].
  /// [appPackageUrl] The URL to the application package
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource identifier.
  /// [location] Resource location depends on the parent resource.
  /// [name] Azure resource name.
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  const GetManagedClusterApplicationTypeVersionResult({
    required this.appPackageUrl,
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appPackageUrl': appPackageUrl,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedClusterApplicationTypeVersionResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationTypeVersionResult(
      appPackageUrl: map['appPackageUrl'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
