// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_channel_args_doc}
/// Arguments for getChannel.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_channel_args_doc}
class GetChannelArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetChannelArgs].
  /// [channelId] Required.
  /// [project] Optional.
  /// [siteId] Required.
  GetChannelArgs({
    required pulumi.Output<String> channelId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      channelId: pulumi.Output.create<String>(map['channelId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

