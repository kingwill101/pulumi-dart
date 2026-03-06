// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMongoDatabase.
class GetMongoDatabaseResult {
  final String accountName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Cosmos DB Mongo Database.
  final Map<String, String> tags;

  /// Creates a new [GetMongoDatabaseResult].
  /// [accountName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Cosmos DB Mongo Database.
  const GetMongoDatabaseResult({
    required this.accountName,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetMongoDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDatabaseResult(
      accountName: map['accountName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

