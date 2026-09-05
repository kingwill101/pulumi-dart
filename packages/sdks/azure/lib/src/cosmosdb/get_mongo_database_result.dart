// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMongoDatabase.
class GetMongoDatabaseResult {
  final String? accountName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Cosmos DB Mongo Database.
  final Map<String, String>? tags;

  /// Creates a new [GetMongoDatabaseResult].
  /// [accountName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Cosmos DB Mongo Database.
  const GetMongoDatabaseResult({
    this.accountName,
    this.id,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetMongoDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDatabaseResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
