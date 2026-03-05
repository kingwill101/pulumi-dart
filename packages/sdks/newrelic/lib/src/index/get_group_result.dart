// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupResult {
  final String authenticationDomainId;

  /// The ID of the fetched matching group.
  final String id;
  final String name;

  /// IDs of users who belong to the group. In the absence of any users in the group, the value of this attribute would be an empty list.
  final List<String> userIds;

  /// Creates a new [GetGroupResult].
  /// [authenticationDomainId] Required.
  /// [id] The ID of the fetched matching group.
  /// [name] Required.
  /// [userIds] IDs of users who belong to the group. In the absence of any users in the group, the value of this attribute would be an empty list.
  GetGroupResult({
    required this.authenticationDomainId,
    required this.id,
    required this.name,
    required this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': authenticationDomainId,
      'id': id,
      'name': name,
      'userIds': userIds,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      authenticationDomainId: map['authenticationDomainId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      userIds: (map['userIds'] as List).cast<String>(),
    );
  }
}
