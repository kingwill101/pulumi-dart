// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_user_details_sqladmin_v1beta4.dart';
import 'user_dual_password_type_sqladmin_v1beta4.dart';
import 'user_password_validation_policy_sqladmin_v1beta4.dart';
import 'user_type_sqladmin_v1beta4.dart';

/// {@template pulumi_sqladmin_v1beta4_user_sqladmin_v1beta4_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_user_sqladmin_v1beta4_args_doc}
class UserSqladminV1beta4Args {
  /// Dual password status for the user.
  final pulumi.Input<UserDualPasswordTypeSqladminV1beta4>? dualPasswordType;
  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;
  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final pulumi.Input<String>? host;
  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for *update* because it is already specified on the URL.
  final pulumi.Input<String> instance;
  /// This is always `sql#user`.
  final pulumi.Input<String>? kind;
  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final pulumi.Input<String>? name;
  /// The password for the user.
  final pulumi.Input<String>? password;
  /// User level password validation policy.
  final pulumi.Input<UserPasswordValidationPolicySqladminV1beta4>? passwordPolicy;
  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for *update* because it is already specified on the URL.
  final pulumi.Input<String>? project;
  final pulumi.Input<SqlServerUserDetailsSqladminV1beta4>? sqlserverUserDetails;
  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final pulumi.Input<UserTypeSqladminV1beta4>? type;

  /// Creates a new [UserSqladminV1beta4Args].
  /// [dualPasswordType] Dual password status for the user.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [host] Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for *update* because it is already specified on the URL.
  /// [kind] This is always `sql#user`.
  /// [name] The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  /// [password] The password for the user.
  /// [passwordPolicy] User level password validation policy.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for *update* because it is already specified on the URL.
  /// [sqlserverUserDetails] Optional.
  /// [type] The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  const UserSqladminV1beta4Args({
    this.dualPasswordType,
    this.etag,
    this.host,
    required this.instance,
    this.kind,
    this.name,
    this.password,
    this.passwordPolicy,
    this.project,
    this.sqlserverUserDetails,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dualPasswordType': ?pulumi.Input.mapOptionalInputValue<UserDualPasswordTypeSqladminV1beta4, String>(dualPasswordType, (value) => value.wireValue),
      'etag': ?etag,
      'host': ?host,
      'instance': instance,
      'kind': ?kind,
      'name': ?name,
      'password': ?password,
      'passwordPolicy': ?pulumi.Input.mapOptionalInputValue<UserPasswordValidationPolicySqladminV1beta4, Map<String, dynamic>>(passwordPolicy, (value) => value.toMap()),
      'project': ?project,
      'sqlserverUserDetails': ?pulumi.Input.mapOptionalInputValue<SqlServerUserDetailsSqladminV1beta4, Map<String, dynamic>>(sqlserverUserDetails, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<UserTypeSqladminV1beta4, String>(type, (value) => value.wireValue),
    };
  }

  factory UserSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return UserSqladminV1beta4Args(
      dualPasswordType: (() { final guardedValue = map['dualPasswordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserDualPasswordTypeSqladminV1beta4.fromValue(guardedValue as String)); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordPolicy: (() { final guardedValue = map['passwordPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPasswordValidationPolicySqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlserverUserDetails: (() { final guardedValue = map['sqlserverUserDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerUserDetailsSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserTypeSqladminV1beta4.fromValue(guardedValue as String)); })(),
    );
  }
}

