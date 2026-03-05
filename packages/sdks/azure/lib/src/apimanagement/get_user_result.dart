// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUser.
class GetUserResult {
  final String apiManagementName;

  /// The Email Address used for this User.
  final String email;

  /// The First Name for the User.
  final String firstName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Last Name for the User.
  final String lastName;

  /// Any notes about this User.
  final String note;
  final String resourceGroupName;

  /// The current state of this User, for example `active`, `blocked` or `pending`.
  final String state;
  final String userId;

  /// Creates a new [GetUserResult].
  /// [apiManagementName] Required.
  /// [email] The Email Address used for this User.
  /// [firstName] The First Name for the User.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastName] The Last Name for the User.
  /// [note] Any notes about this User.
  /// [resourceGroupName] Required.
  /// [state] The current state of this User, for example `active`, `blocked` or `pending`.
  /// [userId] Required.
  GetUserResult({
    required this.apiManagementName,
    required this.email,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.note,
    required this.resourceGroupName,
    required this.state,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'email': email,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'note': note,
      'resourceGroupName': resourceGroupName,
      'state': state,
      'userId': userId,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      apiManagementName: map['apiManagementName'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      id: map['id'] as String,
      lastName: map['lastName'] as String,
      note: map['note'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      state: map['state'] as String,
      userId: map['userId'] as String,
    );
  }
}
