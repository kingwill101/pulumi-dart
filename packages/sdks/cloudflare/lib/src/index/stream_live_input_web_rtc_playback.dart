// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputWebRtcPlayback {
  /// The URL used to play live video over WebRTC.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputWebRtcPlayback].
  /// [url] The URL used to play live video over WebRTC.
  const StreamLiveInputWebRtcPlayback({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory StreamLiveInputWebRtcPlayback.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputWebRtcPlayback(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
