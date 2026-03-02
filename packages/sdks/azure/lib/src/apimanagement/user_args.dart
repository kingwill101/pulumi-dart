// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_user_user_args_doc}
class UserArgs {
  /// The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? confirmation;
  /// The email address associated with this user.
  final pulumi.Input<String> email;
  /// The first name for this user.
  final pulumi.Input<String> firstName;
  /// The last name for this user.
  final pulumi.Input<String> lastName;
  /// A note about this user.
  final pulumi.Input<String>? note;
  /// The password associated with this user.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The state of this user. Possible values are `active`, `blocked` and `pending`.
  ///
  /// > **Note:** the State can be changed from Pending > Active/Blocked but not from Active/Blocked > Pending.
  final pulumi.Input<String>? state;
  /// The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> userId;

  /// Creates a new [UserArgs].
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
  UserArgs({
    required this.apiManagementName,
    this.confirmation,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.note,
    this.password,
    required this.resourceGroupName,
    this.state,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'confirmation': ?confirmation,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'note': ?note,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'userId': userId,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      confirmation: map['confirmation'] == null ? null : (map['confirmation'] as String).input(),
      email: (map['email'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      note: map['note'] == null ? null : (map['note'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

