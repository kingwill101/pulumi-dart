// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputRtmpsPlayback {
  /// The secret key to use for playback via RTMPS.
  final pulumi.Input<String> streamKey;
  /// The URL used to play live video over RTMPS.
  final pulumi.Input<String> url;

  /// Creates a new [GetStreamLiveInputRtmpsPlayback].
  /// [streamKey] The secret key to use for playback via RTMPS.
  /// [url] The URL used to play live video over RTMPS.
  const GetStreamLiveInputRtmpsPlayback({
    required this.streamKey,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamKey': streamKey,
      'url': url,
    };
  }

  factory GetStreamLiveInputRtmpsPlayback.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputRtmpsPlayback(
      streamKey: pulumi.Input.fromValue(map['streamKey'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
