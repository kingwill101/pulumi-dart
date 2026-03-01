// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_password_policy.dart';
import 'user_sql_server_user_detail.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The deletion policy for the user.
  /// Setting `ABANDON` allows the resource to be abandoned rather than deleted. This is useful
  /// for Postgres, where users cannot be deleted from the API if they have been granted SQL roles.
  ///
  /// Possible values are: `ABANDON`.
  final pulumi.Input<String>? deletionPolicy;
  /// The host the user can connect from. This is only supported
  /// for BUILT_IN users in MySQL instances. Don't set this field for PostgreSQL and SQL Server instances.
  /// Can be an IP address. Changing this forces a new resource to be created.
  final pulumi.Input<String>? host;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  final pulumi.Input<String>? instance;
  /// The name of the user. Changing this forces a new resource
  /// to be created.
  final pulumi.Input<String>? name;
  /// The password for the user. Can be updated. For Postgres
  /// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
  /// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
  /// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
  final pulumi.Input<String>? password;
  final pulumi.Input<UserPasswordPolicy>? passwordPolicy;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
  /// either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT.
  final pulumi.Input<String>? passwordWo;
  /// The version of the password_wo. For more info see [updating write-only attributes](https://www.terraform.io/docs/providers/google/guides/using_write_only_attributes.html#updating-write-only-attributes).
  ///
  /// - - -
  final pulumi.Input<int>? passwordWoVersion;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<List<UserSqlServerUserDetail>>? sqlServerUserDetails;
  /// The user type. It determines the method to authenticate the
  /// user during login. The default is the database's built-in user type. Flags
  /// include "BUILT_IN", "CLOUD_IAM_USER", "CLOUD_IAM_SERVICE_ACCOUNT", "CLOUD_IAM_GROUP",
  /// "CLOUD_IAM_GROUP_USER" and "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" for
  /// [Postgres](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1beta4/users#sqlusertype)
  /// and [MySQL](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/users#sqlusertype).
  final pulumi.Input<String>? type;

  /// Creates a new [UserState].
  /// [deletionPolicy] The deletion policy for the user.
  /// [host] The host the user can connect from. This is only supported
  /// [instance] The name of the Cloud SQL instance. Changing this
  /// [name] The name of the user. Changing this forces a new resource
  /// [password] The password for the user. Can be updated. For Postgres
  /// [passwordPolicy] Optional.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] The version of the password_wo. For more info see [updating write-only attributes](https://www.terraform.io/docs/providers/google/guides/using_write_only_attributes.html#updating-write-only-attributes).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [sqlServerUserDetails] Optional.
  /// [type] The user type. It determines the method to authenticate the
  UserState({
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? host,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<UserPasswordPolicy>? passwordPolicy,
    pulumi.Output<String>? passwordWo,
    pulumi.Output<int>? passwordWoVersion,
    pulumi.Output<String>? project,
    pulumi.Output<List<UserSqlServerUserDetail>>? sqlServerUserDetails,
    pulumi.Output<String>? type,
  }) :
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      host = pulumi.Input.asOptionalInput<String>(host),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordPolicy = pulumi.Input.asOptionalInput<UserPasswordPolicy>(passwordPolicy),
      passwordWo = pulumi.Input.asOptionalInput<String>(passwordWo),
      passwordWoVersion = pulumi.Input.asOptionalInput<int>(passwordWoVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      sqlServerUserDetails = pulumi.Input.asOptionalInput<List<UserSqlServerUserDetail>>(sqlServerUserDetails),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'host': ?host,
      'instance': ?instance,
      'name': ?name,
      'password': ?password,
      'passwordPolicy': ?pulumi.Input.mapOptionalInputValue<UserPasswordPolicy, Map<String, dynamic>>(passwordPolicy, (value) => value.toMap()),
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'project': ?project,
      'sqlServerUserDetails': ?pulumi.Input.mapOptionalInputValue<List<UserSqlServerUserDetail>, List<Map<String, dynamic>>>(sqlServerUserDetails, (value) => pulumi.Input.encodeList<UserSqlServerUserDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      passwordPolicy: map['passwordPolicy'] == null ? null : pulumi.Output.create<UserPasswordPolicy>(UserPasswordPolicy.fromMap((map['passwordPolicy'] as Map).cast<String, dynamic>())),
      passwordWo: map['passwordWo'] == null ? null : pulumi.Output.create<String>(map['passwordWo'] as String),
      passwordWoVersion: map['passwordWoVersion'] == null ? null : pulumi.Output.create<int>(map['passwordWoVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sqlServerUserDetails: map['sqlServerUserDetails'] == null ? null : pulumi.Output.create<List<UserSqlServerUserDetail>>(pulumi.Input.decodeList<UserSqlServerUserDetail>(map['sqlServerUserDetails'], (value) => UserSqlServerUserDetail.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

