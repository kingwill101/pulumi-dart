// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputRtmps {
  /// The secret key to use when streaming via RTMPS to a live input.
  final pulumi.Input<String?>? streamKey;
  /// The RTMPS URL you provide to the broadcaster, which they stream live video to.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputRtmps].
  /// [streamKey] The secret key to use when streaming via RTMPS to a live input.
  /// [url] The RTMPS URL you provide to the broadcaster, which they stream live video to.
  const StreamLiveInputRtmps({
    this.streamKey,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamKey': ?streamKey,
      'url': ?url,
    };
  }

  factory StreamLiveInputRtmps.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputRtmps(
      streamKey: (() { final guardedValue = map['streamKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
