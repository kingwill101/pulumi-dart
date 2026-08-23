// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_user_alloydb_v1alpha_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_user_alloydb_v1alpha_args_doc}
class GetUserAlloydbV1alphaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserAlloydbV1alphaArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userId] Required.
  const GetUserAlloydbV1alphaArgs({
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

  factory GetUserAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAlloydbV1alphaArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
