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
  final pulumi.Input<List<String>?>? databaseRoles;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Password for this database user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for this database user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `password` or `passwordWo` can only be set.
  final pulumi.Input<String?>? passwordWo;
  /// Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? passwordWoVersion;
  /// The database role name of the user.
  final pulumi.Input<String> userId;
  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  final pulumi.Input<String> userType;

  /// Creates a new [UserArgs].
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [databaseRoles] List of database roles this database user has.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [password] Password for this database user.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [userId] The database role name of the user.
  /// [userType] The type of this user.
  const UserArgs({
    required this.cluster,
    this.databaseRoles,
    this.deletionPolicy,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    required this.userId,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'databaseRoles': ?databaseRoles,
      'deletionPolicy': ?deletionPolicy,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'userId': userId,
      'userType': userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      databaseRoles: (() { final guardedValue = map['databaseRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userType: pulumi.Input.fromValue(map['userType'] as String),
    );
  }
}
