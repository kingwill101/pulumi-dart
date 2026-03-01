// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_alloydb_user_user_args_doc}
class UserArgs {
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String> cluster;
  /// List of database roles this database user has.
  final pulumi.Input<List<String>>? databaseRoles;
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
  final pulumi.Input<String> userId;
  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  final pulumi.Input<String> userType;

  /// Creates a new [UserArgs].
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [databaseRoles] List of database roles this database user has.
  /// [password] Password for this database user.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `password_wo` write-only. Increment this value when an update to `password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [userId] The database role name of the user.
  /// [userType] The type of this user.
  UserArgs({
    required pulumi.Output<String> cluster,
    pulumi.Output<List<String>>? databaseRoles,
    pulumi.Output<String>? password,
    pulumi.Output<String>? passwordWo,
    pulumi.Output<String>? passwordWoVersion,
    required pulumi.Output<String> userId,
    required pulumi.Output<String> userType,
  }) :
      cluster = pulumi.Input.asInput<String>(cluster),
      databaseRoles = pulumi.Input.asOptionalInput<List<String>>(databaseRoles),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordWo = pulumi.Input.asOptionalInput<String>(passwordWo),
      passwordWoVersion = pulumi.Input.asOptionalInput<String>(passwordWoVersion),
      userId = pulumi.Input.asInput<String>(userId),
      userType = pulumi.Input.asInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'databaseRoles': ?databaseRoles,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'userId': userId,
      'userType': userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      cluster: pulumi.Output.create<String>(map['cluster'] as String),
      databaseRoles: map['databaseRoles'] == null ? null : pulumi.Output.create<List<String>>((map['databaseRoles'] as List).cast<String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      passwordWo: map['passwordWo'] == null ? null : pulumi.Output.create<String>(map['passwordWo'] as String),
      passwordWoVersion: map['passwordWoVersion'] == null ? null : pulumi.Output.create<String>(map['passwordWoVersion'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
      userType: pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

