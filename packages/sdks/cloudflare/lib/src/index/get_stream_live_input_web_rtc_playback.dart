// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputWebRtcPlayback {
  /// The URL used to play live video over WebRTC.
  final pulumi.Input<String> url;

  /// Creates a new [GetStreamLiveInputWebRtcPlayback].
  /// [url] The URL used to play live video over WebRTC.
  const GetStreamLiveInputWebRtcPlayback({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory GetStreamLiveInputWebRtcPlayback.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputWebRtcPlayback(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
