// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1beta_get_user_alloydb_v1beta_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1beta_get_user_alloydb_v1beta_args_doc}
class GetUserAlloydbV1betaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserAlloydbV1betaArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userId] Required.
  GetUserAlloydbV1betaArgs({
    required this.clusterId,
    required this.location,
    this.project,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
      'userId': userId,
    };
  }

  factory GetUserAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAlloydbV1betaArgs(
      clusterId: (map['clusterId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

