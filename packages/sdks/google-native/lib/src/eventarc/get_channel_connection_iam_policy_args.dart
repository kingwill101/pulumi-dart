// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_connection_iam_policy_args_doc}
/// Arguments for getChannelConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_connection_iam_policy_args_doc}
class GetChannelConnectionIamPolicyArgs {
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelConnectionIamPolicyArgs].
  /// [channelConnectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetChannelConnectionIamPolicyArgs({
    required pulumi.Output<String> channelConnectionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      channelConnectionId = pulumi.Input.asInput<String>(channelConnectionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelConnectionId': channelConnectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetChannelConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionIamPolicyArgs(
      channelConnectionId: pulumi.Output.create<String>(map['channelConnectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

