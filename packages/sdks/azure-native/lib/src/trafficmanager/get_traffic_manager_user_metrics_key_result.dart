// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrafficManagerUserMetricsKey.
class GetTrafficManagerUserMetricsKeyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  final String? id;
  /// The key returned by the User Metrics operation.
  final String? key;
  /// The name of the resource
  final String? name;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final String? type;

  /// Creates a new [GetTrafficManagerUserMetricsKeyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  /// [key] The key returned by the User Metrics operation.
  /// [name] The name of the resource
  /// [type] The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  const GetTrafficManagerUserMetricsKeyResult({
    required this.azureApiVersion,
    this.id,
    this.key,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': ?id,
      'key': ?key,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetTrafficManagerUserMetricsKeyResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerUserMetricsKeyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
