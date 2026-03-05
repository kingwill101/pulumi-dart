// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDpsSharedAccessPolicy.
class GetDpsSharedAccessPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String iothubDpsName;
  final String name;

  /// The primary connection string of the Shared Access Policy.
  final String primaryConnectionString;

  /// The primary key used to create the authentication token.
  final String primaryKey;
  final String resourceGroupName;

  /// The secondary connection string of the Shared Access Policy.
  final String secondaryConnectionString;

  /// The secondary key used to create the authentication token.
  final String secondaryKey;

  /// Creates a new [GetDpsSharedAccessPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [iothubDpsName] Required.
  /// [name] Required.
  /// [primaryConnectionString] The primary connection string of the Shared Access Policy.
  /// [primaryKey] The primary key used to create the authentication token.
  /// [resourceGroupName] Required.
  /// [secondaryConnectionString] The secondary connection string of the Shared Access Policy.
  /// [secondaryKey] The secondary key used to create the authentication token.
  GetDpsSharedAccessPolicyResult({
    required this.id,
    required this.iothubDpsName,
    required this.name,
    required this.primaryConnectionString,
    required this.primaryKey,
    required this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'iothubDpsName': iothubDpsName,
      'name': name,
      'primaryConnectionString': primaryConnectionString,
      'primaryKey': primaryKey,
      'resourceGroupName': resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': secondaryKey,
    };
  }

  factory GetDpsSharedAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDpsSharedAccessPolicyResult(
      id: map['id'] as String,
      iothubDpsName: map['iothubDpsName'] as String,
      name: map['name'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}
