// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnterpriseDatabase.
class GetEnterpriseDatabaseResult {
  /// The Redis Enterprise Cluster ID that is hosting the Redis Enterprise Database.
  final String? clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Linked Database Group Nickname for the Redis Enterprise Database instance.
  final String? linkedDatabaseGroupNickname;
  /// The Linked Database list for the Redis Enterprise Database instance.
  final List<String>? linkedDatabaseIds;
  /// The Redis Enterprise Database name.
  final String? name;
  /// The Primary Access Key for the Redis Enterprise Database instance.
  final String? primaryAccessKey;
  /// The Secondary Access Key for the Redis Enterprise Database instance.
  final String? secondaryAccessKey;

  /// Creates a new [GetEnterpriseDatabaseResult].
  /// [clusterId] The Redis Enterprise Cluster ID that is hosting the Redis Enterprise Database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkedDatabaseGroupNickname] The Linked Database Group Nickname for the Redis Enterprise Database instance.
  /// [linkedDatabaseIds] The Linked Database list for the Redis Enterprise Database instance.
  /// [name] The Redis Enterprise Database name.
  /// [primaryAccessKey] The Primary Access Key for the Redis Enterprise Database instance.
  /// [secondaryAccessKey] The Secondary Access Key for the Redis Enterprise Database instance.
  const GetEnterpriseDatabaseResult({
    this.clusterId,
    this.id,
    this.linkedDatabaseGroupNickname,
    this.linkedDatabaseIds,
    this.name,
    this.primaryAccessKey,
    this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'id': ?id,
      'linkedDatabaseGroupNickname': ?linkedDatabaseGroupNickname,
      'linkedDatabaseIds': ?linkedDatabaseIds,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'secondaryAccessKey': ?secondaryAccessKey,
    };
  }

  factory GetEnterpriseDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabaseResult(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedDatabaseGroupNickname: (() { final guardedValue = map['linkedDatabaseGroupNickname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedDatabaseIds: (() { final guardedValue = map['linkedDatabaseIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
