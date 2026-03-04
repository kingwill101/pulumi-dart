// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_get_user_args_doc}
class GetUserArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userId] Required.
  GetUserArgs({
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

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
