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
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> userId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      userId = pulumi.Input.asInput<String>(userId);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

