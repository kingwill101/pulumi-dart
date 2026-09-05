// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConsumeGroup.
class GetConsumeGroupResult {
  final String? eventhubName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? namespaceName;
  final String? resourceGroupName;
  /// Specifies the user metadata.
  final String? userMetadata;

  /// Creates a new [GetConsumeGroupResult].
  /// [eventhubName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  /// [userMetadata] Specifies the user metadata.
  const GetConsumeGroupResult({
    this.eventhubName,
    this.id,
    this.name,
    this.namespaceName,
    this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': ?eventhubName,
      'id': ?id,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory GetConsumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConsumeGroupResult(
      eventhubName: (() { final guardedValue = map['eventhubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
