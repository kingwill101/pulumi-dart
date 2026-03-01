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
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? confirmation,
    pulumi.Output<String>? email,
    pulumi.Output<String>? firstName,
    pulumi.Output<String>? lastName,
    pulumi.Output<String>? note,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? state,
    pulumi.Output<String>? userId,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      confirmation = pulumi.Input.asOptionalInput<String>(confirmation),
      email = pulumi.Input.asOptionalInput<String>(email),
      firstName = pulumi.Input.asOptionalInput<String>(firstName),
      lastName = pulumi.Input.asOptionalInput<String>(lastName),
      note = pulumi.Input.asOptionalInput<String>(note),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      confirmation: map['confirmation'] == null ? null : pulumi.Output.create<String>(map['confirmation'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      firstName: map['firstName'] == null ? null : pulumi.Output.create<String>(map['firstName'] as String),
      lastName: map['lastName'] == null ? null : pulumi.Output.create<String>(map['lastName'] as String),
      note: map['note'] == null ? null : pulumi.Output.create<String>(map['note'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

