// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_iam_policy_args_doc}
/// Arguments for getChannelIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_iam_policy_args_doc}
class GetChannelIamPolicyArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelIamPolicyArgs].
  /// [channelId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetChannelIamPolicyArgs({
    required pulumi.Output<String> channelId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetChannelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelIamPolicyArgs(
      channelId: pulumi.Output.create<String>(map['channelId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

