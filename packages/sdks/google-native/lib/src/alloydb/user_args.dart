// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_user_type.dart';

/// {@template pulumi_alloydb_v1_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_user_args_doc}
class UserArgs {
  final pulumi.Input<String> clusterId;
  /// Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  final pulumi.Input<List<String>>? databaseRoles;
  final pulumi.Input<String>? location;
  /// Input only. Password for the user.
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> userId;
  /// Optional. Type of this user.
  final pulumi.Input<UserUserType>? userType;

  /// Creates a new [UserArgs].
  /// [clusterId] Required.
  /// [databaseRoles] Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  /// [location] Optional.
  /// [password] Input only. Password for the user.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [userId] Required. ID of the requesting object.
  /// [userType] Optional. Type of this user.
  const UserArgs({
    required this.clusterId,
    this.databaseRoles,
    this.location,
    this.password,
    this.project,
    this.requestId,
    required this.userId,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'databaseRoles': ?databaseRoles,
      'location': ?location,
      'password': ?password,
      'project': ?project,
      'requestId': ?requestId,
      'userId': userId,
      'userType': ?pulumi.Input.mapOptionalInputValue<UserUserType, String>(userType, (value) => value.wireValue),
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      databaseRoles: (() { final guardedValue = map['databaseRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserUserType.fromValue(guardedValue as String)); })(),
    );
  }
}

