// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2_get_queue_iam_policy_args_doc}
/// Arguments for getQueueIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2_get_queue_iam_policy_args_doc}
class GetQueueIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueIamPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  GetQueueIamPolicyArgs({
    required this.location,
    this.project,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
    };
  }

  factory GetQueueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueIamPolicyArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      queueId: (map['queueId'] as String).input(),
    );
  }
}

