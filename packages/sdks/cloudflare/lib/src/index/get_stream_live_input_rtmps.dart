// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputRtmps {
  /// The secret key to use when streaming via RTMPS to a live input.
  final pulumi.Input<String> streamKey;
  /// The RTMPS URL you provide to the broadcaster, which they stream live video to.
  final pulumi.Input<String> url;

  /// Creates a new [GetStreamLiveInputRtmps].
  /// [streamKey] The secret key to use when streaming via RTMPS to a live input.
  /// [url] The RTMPS URL you provide to the broadcaster, which they stream live video to.
  const GetStreamLiveInputRtmps({
    required this.streamKey,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamKey': streamKey,
      'url': url,
    };
  }

  factory GetStreamLiveInputRtmps.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputRtmps(
      streamKey: pulumi.Input.fromValue(map['streamKey'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
