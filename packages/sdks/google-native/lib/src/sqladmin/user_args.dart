// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_user_details.dart';
import 'user_dual_password_type.dart';
import 'user_password_validation_policy.dart';
import 'user_type.dart';

/// {@template pulumi_sqladmin_v1_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_user_args_doc}
class UserArgs {
  /// Dual password status for the user.
  final pulumi.Input<UserDualPasswordType>? dualPasswordType;
  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;
  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final pulumi.Input<String>? host;
  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  final pulumi.Input<String> instance;
  /// This is always `sql#user`.
  final pulumi.Input<String>? kind;
  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final pulumi.Input<String>? name;
  /// The password for the user.
  final pulumi.Input<String>? password;
  /// User level password validation policy.
  final pulumi.Input<UserPasswordValidationPolicy>? passwordPolicy;
  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  final pulumi.Input<String>? project;
  final pulumi.Input<SqlServerUserDetails>? sqlserverUserDetails;
  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final pulumi.Input<UserType>? type;

  /// Creates a new [UserArgs].
  /// [dualPasswordType] Dual password status for the user.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [host] Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  /// [kind] This is always `sql#user`.
  /// [name] The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  /// [password] The password for the user.
  /// [passwordPolicy] User level password validation policy.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  /// [sqlserverUserDetails] Optional.
  /// [type] The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  UserArgs({
    pulumi.Output<UserDualPasswordType>? dualPasswordType,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? host,
    required pulumi.Output<String> instance,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<UserPasswordValidationPolicy>? passwordPolicy,
    pulumi.Output<String>? project,
    pulumi.Output<SqlServerUserDetails>? sqlserverUserDetails,
    pulumi.Output<UserType>? type,
  }) :
      dualPasswordType = pulumi.Input.asOptionalInput<UserDualPasswordType>(dualPasswordType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      host = pulumi.Input.asOptionalInput<String>(host),
      instance = pulumi.Input.asInput<String>(instance),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordPolicy = pulumi.Input.asOptionalInput<UserPasswordValidationPolicy>(passwordPolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      sqlserverUserDetails = pulumi.Input.asOptionalInput<SqlServerUserDetails>(sqlserverUserDetails),
      type = pulumi.Input.asOptionalInput<UserType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dualPasswordType': ?pulumi.Input.mapOptionalInputValue<UserDualPasswordType, String>(dualPasswordType, (value) => value.value),
      'etag': ?etag,
      'host': ?host,
      'instance': instance,
      'kind': ?kind,
      'name': ?name,
      'password': ?password,
      'passwordPolicy': ?pulumi.Input.mapOptionalInputValue<UserPasswordValidationPolicy, Map<String, dynamic>>(passwordPolicy, (value) => value.toMap()),
      'project': ?project,
      'sqlserverUserDetails': ?pulumi.Input.mapOptionalInputValue<SqlServerUserDetails, Map<String, dynamic>>(sqlserverUserDetails, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<UserType, String>(type, (value) => value.value),
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      dualPasswordType: map['dualPasswordType'] == null ? null : pulumi.Output.create<UserDualPasswordType>(UserDualPasswordType.fromValue(map['dualPasswordType'] as String)),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      passwordPolicy: map['passwordPolicy'] == null ? null : pulumi.Output.create<UserPasswordValidationPolicy>(UserPasswordValidationPolicy.fromMap((map['passwordPolicy'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sqlserverUserDetails: map['sqlserverUserDetails'] == null ? null : pulumi.Output.create<SqlServerUserDetails>(SqlServerUserDetails.fromMap((map['sqlserverUserDetails'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<UserType>(UserType.fromValue(map['type'] as String)),
    );
  }
}

