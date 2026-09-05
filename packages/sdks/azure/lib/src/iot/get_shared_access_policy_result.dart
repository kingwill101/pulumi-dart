// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSharedAccessPolicy.
class GetSharedAccessPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? iothubName;
  final String? name;
  /// The primary connection string of the Shared Access Policy.
  final String? primaryConnectionString;
  /// The primary key used to create the authentication token.
  final String? primaryKey;
  final String? resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  final String? secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  final String? secondaryKey;

  /// Creates a new [GetSharedAccessPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [iothubName] Optional.
  /// [name] Optional.
  /// [primaryConnectionString] The primary connection string of the Shared Access Policy.
  /// [primaryKey] The primary key used to create the authentication token.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The secondary connection string of the Shared Access Policy.
  /// [secondaryKey] The secondary key used to create the authentication token.
  const GetSharedAccessPolicyResult({
    this.id,
    this.iothubName,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'iothubName': ?iothubName,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory GetSharedAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSharedAccessPolicyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iothubName: (() { final guardedValue = map['iothubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
