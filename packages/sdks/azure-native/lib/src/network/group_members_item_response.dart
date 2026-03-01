// ignore_for_file: unused_element, unnecessary_cast


/// GroupMembers Item.
class GroupMembersItemResponse {
  /// Resource Id.
  final String? resourceId;

  /// Creates a new [GroupMembersItemResponse].
  /// [resourceId] Resource Id.
  GroupMembersItemResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory GroupMembersItemResponse.fromMap(Map<String, dynamic> map) {
    return GroupMembersItemResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

