// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputWebRtc {
  /// The WebRTC URL you provide to the broadcaster, which they stream live video to.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputWebRtc].
  /// [url] The WebRTC URL you provide to the broadcaster, which they stream live video to.
  const StreamLiveInputWebRtc({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory StreamLiveInputWebRtc.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputWebRtc(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
