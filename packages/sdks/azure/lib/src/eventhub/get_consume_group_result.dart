// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConsumeGroup.
class GetConsumeGroupResult {
  final String eventhubName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String namespaceName;
  final String resourceGroupName;
  /// Specifies the user metadata.
  final String userMetadata;

  /// Creates a new [GetConsumeGroupResult].
  /// [eventhubName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namespaceName] Required.
  /// [resourceGroupName] Required.
  /// [userMetadata] Specifies the user metadata.
  const GetConsumeGroupResult({
    required this.eventhubName,
    required this.id,
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'id': id,
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'userMetadata': userMetadata,
    };
  }

  factory GetConsumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConsumeGroupResult(
      eventhubName: map['eventhubName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userMetadata: map['userMetadata'] as String,
    );
  }
}
