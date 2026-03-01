// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? cluster;
  /// List of database roles this database user has.
  final pulumi.Input<List<String>>? databaseRoles;
  /// Name of the resource in the form of projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
  final pulumi.Input<String>? name;
  /// Password for this database user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for this database user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `password` or `password_wo` can only be set.
  final pulumi.Input<String>? passwordWo;
  /// Triggers update of `password_wo` write-only. Increment this value when an update to `password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? passwordWoVersion;
  /// The database role name of the user.
  final pulumi.Input<String>? userId;
  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserState].
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [databaseRoles] List of database roles this database user has.
  /// [name] Name of the resource in the form of projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
  /// [password] Password for this database user.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `password_wo` write-only. Increment this value when an update to `password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [userId] The database role name of the user.
  /// [userType] The type of this user.
  UserState({
    pulumi.Output<String>? cluster,
    pulumi.Output<List<String>>? databaseRoles,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? passwordWo,
    pulumi.Output<String>? passwordWoVersion,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userType,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      databaseRoles = pulumi.Input.asOptionalInput<List<String>>(databaseRoles),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordWo = pulumi.Input.asOptionalInput<String>(passwordWo),
      passwordWoVersion = pulumi.Input.asOptionalInput<String>(passwordWoVersion),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userType = pulumi.Input.asOptionalInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'databaseRoles': ?databaseRoles,
      'name': ?name,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'userId': ?userId,
      'userType': ?userType,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      databaseRoles: map['databaseRoles'] == null ? null : pulumi.Output.create<List<String>>((map['databaseRoles'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      passwordWo: map['passwordWo'] == null ? null : pulumi.Output.create<String>(map['passwordWo'] as String),
      passwordWoVersion: map['passwordWoVersion'] == null ? null : pulumi.Output.create<String>(map['passwordWoVersion'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

