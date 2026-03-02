// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_user_type_alloydb_v1beta.dart';

/// {@template pulumi_alloydb_v1beta_user_alloydb_v1beta_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1beta_user_alloydb_v1beta_args_doc}
class UserAlloydbV1betaArgs {
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
  final pulumi.Input<UserUserTypeAlloydbV1beta>? userType;

  /// Creates a new [UserAlloydbV1betaArgs].
  /// [clusterId] Required.
  /// [databaseRoles] Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  /// [location] Optional.
  /// [password] Input only. Password for the user.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [userId] Required. ID of the requesting object.
  /// [userType] Optional. Type of this user.
  UserAlloydbV1betaArgs({
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
      'userType': ?pulumi.Input.mapOptionalInputValue<UserUserTypeAlloydbV1beta, String>(userType, (value) => value.value),
    };
  }

  factory UserAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return UserAlloydbV1betaArgs(
      clusterId: (map['clusterId'] as String).input(),
      databaseRoles: map['databaseRoles'] == null ? null : ((map['databaseRoles'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      userId: (map['userId'] as String).input(),
      userType: map['userType'] == null ? null : (UserUserTypeAlloydbV1beta.fromValue(map['userType'] as String)).input(),
    );
  }
}

