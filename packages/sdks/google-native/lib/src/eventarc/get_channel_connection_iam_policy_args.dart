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
    required this.channelConnectionId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      channelConnectionId: (map['channelConnectionId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

