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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> queueId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      queueId = pulumi.Input.asInput<String>(queueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
    };
  }

  factory GetQueueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queueId: pulumi.Output.create<String>(map['queueId'] as String),
    );
  }
}

