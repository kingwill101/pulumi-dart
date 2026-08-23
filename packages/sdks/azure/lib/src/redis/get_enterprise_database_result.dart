// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnterpriseDatabase.
class GetEnterpriseDatabaseResult {
  /// The Redis Enterprise Cluster ID that is hosting the Redis Enterprise Database.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Linked Database Group Nickname for the Redis Enterprise Database instance.
  final String linkedDatabaseGroupNickname;
  /// The Linked Database list for the Redis Enterprise Database instance.
  final List<String> linkedDatabaseIds;
  /// The Redis Enterprise Database name.
  final String name;
  /// The Primary Access Key for the Redis Enterprise Database instance.
  final String primaryAccessKey;
  /// The Secondary Access Key for the Redis Enterprise Database instance.
  final String secondaryAccessKey;

  /// Creates a new [GetEnterpriseDatabaseResult].
  /// [clusterId] The Redis Enterprise Cluster ID that is hosting the Redis Enterprise Database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkedDatabaseGroupNickname] The Linked Database Group Nickname for the Redis Enterprise Database instance.
  /// [linkedDatabaseIds] The Linked Database list for the Redis Enterprise Database instance.
  /// [name] The Redis Enterprise Database name.
  /// [primaryAccessKey] The Primary Access Key for the Redis Enterprise Database instance.
  /// [secondaryAccessKey] The Secondary Access Key for the Redis Enterprise Database instance.
  const GetEnterpriseDatabaseResult({
    required this.clusterId,
    required this.id,
    required this.linkedDatabaseGroupNickname,
    required this.linkedDatabaseIds,
    required this.name,
    required this.primaryAccessKey,
    required this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'linkedDatabaseGroupNickname': linkedDatabaseGroupNickname,
      'linkedDatabaseIds': linkedDatabaseIds,
      'name': name,
      'primaryAccessKey': primaryAccessKey,
      'secondaryAccessKey': secondaryAccessKey,
    };
  }

  factory GetEnterpriseDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabaseResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      linkedDatabaseGroupNickname: map['linkedDatabaseGroupNickname'] as String,
      linkedDatabaseIds: (map['linkedDatabaseIds'] as List).cast<String>(),
      name: map['name'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
    );
  }
}
