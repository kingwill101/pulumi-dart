// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? confirmation;
  /// The email address associated with this user.
  final pulumi.Input<String>? email;
  /// The first name for this user.
  final pulumi.Input<String>? firstName;
  /// The last name for this user.
  final pulumi.Input<String>? lastName;
  /// A note about this user.
  final pulumi.Input<String>? note;
  /// The password associated with this user.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The state of this user. Possible values are `active`, `blocked` and `pending`.
  ///
  /// > **Note:** the State can be changed from Pending > Active/Blocked but not from Active/Blocked > Pending.
  final pulumi.Input<String>? state;
  /// The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserState].
  /// [apiManagementName] The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created.
  /// [confirmation] The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created.
  /// [email] The email address associated with this user.
  /// [firstName] The first name for this user.
  /// [lastName] The last name for this user.
  /// [note] A note about this user.
  /// [password] The password associated with this user.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [state] The state of this user. Possible values are `active`, `blocked` and `pending`.
  /// [userId] The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  UserState({
    this.apiManagementName,
    this.confirmation,
    this.email,
    this.firstName,
    this.lastName,
    this.note,
    this.password,
    this.resourceGroupName,
    this.state,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'confirmation': ?confirmation,
      'email': ?email,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'note': ?note,
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'state': ?state,
      'userId': ?userId,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      confirmation: map['confirmation'] == null ? null : (map['confirmation']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName']! as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName']! as String).input(),
      note: map['note'] == null ? null : (map['note']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

