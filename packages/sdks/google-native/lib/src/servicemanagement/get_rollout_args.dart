// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_rollout_args_doc}
/// Arguments for getRollout.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_rollout_args_doc}
class GetRolloutArgs {
  final pulumi.Input<String> rolloutId;
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetRolloutArgs].
  /// [rolloutId] Required.
  /// [serviceName] Required.
  const GetRolloutArgs({
    required this.rolloutId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutId': rolloutId,
      'serviceName': serviceName,
    };
  }

  factory GetRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetRolloutArgs(
      rolloutId: pulumi.Input.fromValue(map['rolloutId'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
