// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecretValue.
class GetSecretValueResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// State of the resource.
  final String provisioningState;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// The actual value of the secret.
  final String? value;

  /// Creates a new [GetSecretValueResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] State of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [value] The actual value of the secret.
  GetSecretValueResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'value': ?value,
    };
  }

  factory GetSecretValueResult.fromMap(Map<String, dynamic> map) {
    return GetSecretValueResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
