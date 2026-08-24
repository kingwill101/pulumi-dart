// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputRtmpsPlayback {
  /// The secret key to use for playback via RTMPS.
  final pulumi.Input<String?>? streamKey;
  /// The URL used to play live video over RTMPS.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputRtmpsPlayback].
  /// [streamKey] The secret key to use for playback via RTMPS.
  /// [url] The URL used to play live video over RTMPS.
  const StreamLiveInputRtmpsPlayback({
    this.streamKey,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamKey': ?streamKey,
      'url': ?url,
    };
  }

  factory StreamLiveInputRtmpsPlayback.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputRtmpsPlayback(
      streamKey: (() { final guardedValue = map['streamKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
