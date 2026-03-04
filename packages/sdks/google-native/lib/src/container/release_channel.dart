// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_channel.dart';

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannel {
  /// channel specifies which release channel the cluster is subscribed to.
  final pulumi.Input<ReleaseChannelChannel>? channel;

  /// Creates a new [ReleaseChannel].
  /// [channel] channel specifies which release channel the cluster is subscribed to.
  ReleaseChannel({this.channel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel':
          ?pulumi.Input.mapOptionalInputValue<ReleaseChannelChannel, String>(
            channel,
            (value) => value.wireValue,
          ),
    };
  }

  factory ReleaseChannel.fromMap(Map<String, dynamic> map) {
    return ReleaseChannel(
      channel: (() {
        final guardedValue = map['channel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReleaseChannelChannel.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
