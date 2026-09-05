// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUser.
class GetUserResult {
  final String? apiManagementName;
  /// The Email Address used for this User.
  final String? email;
  /// The First Name for the User.
  final String? firstName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Last Name for the User.
  final String? lastName;
  /// Any notes about this User.
  final String? note;
  final String? resourceGroupName;
  /// The current state of this User, for example `active`, `blocked` or `pending`.
  final String? state;
  final String? userId;

  /// Creates a new [GetUserResult].
  /// [apiManagementName] Optional.
  /// [email] The Email Address used for this User.
  /// [firstName] The First Name for the User.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastName] The Last Name for the User.
  /// [note] Any notes about this User.
  /// [resourceGroupName] Optional.
  /// [state] The current state of this User, for example `active`, `blocked` or `pending`.
  /// [userId] Optional.
  const GetUserResult({
    this.apiManagementName,
    this.email,
    this.firstName,
    this.id,
    this.lastName,
    this.note,
    this.resourceGroupName,
    this.state,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'email': ?email,
      'firstName': ?firstName,
      'id': ?id,
      'lastName': ?lastName,
      'note': ?note,
      'resourceGroupName': ?resourceGroupName,
      'state': ?state,
      'userId': ?userId,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
