// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_channel_container_v1beta1.dart';

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannelContainerV1beta1 {
  /// channel specifies which release channel the cluster is subscribed to.
  final pulumi.Input<ReleaseChannelChannelContainerV1beta1>? channel;

  /// Creates a new [ReleaseChannelContainerV1beta1].
  /// [channel] channel specifies which release channel the cluster is subscribed to.
  const ReleaseChannelContainerV1beta1({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?pulumi.Input.mapOptionalInputValue<ReleaseChannelChannelContainerV1beta1, String>(channel, (value) => value.wireValue),
    };
  }

  factory ReleaseChannelContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelContainerV1beta1(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleaseChannelChannelContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

