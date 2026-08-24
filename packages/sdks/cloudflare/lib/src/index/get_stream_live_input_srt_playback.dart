// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputSrtPlayback {
  /// The secret key to use for playback via SRT.
  final pulumi.Input<String> passphrase;
  /// The identifier of the live input to use for playback via SRT.
  final pulumi.Input<String> streamId;
  /// The URL used to play live video over SRT.
  final pulumi.Input<String> url;

  /// Creates a new [GetStreamLiveInputSrtPlayback].
  /// [passphrase] The secret key to use for playback via SRT.
  /// [streamId] The identifier of the live input to use for playback via SRT.
  /// [url] The URL used to play live video over SRT.
  const GetStreamLiveInputSrtPlayback({
    required this.passphrase,
    required this.streamId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passphrase': passphrase,
      'streamId': streamId,
      'url': url,
    };
  }

  factory GetStreamLiveInputSrtPlayback.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputSrtPlayback(
      passphrase: pulumi.Input.fromValue(map['passphrase'] as String),
      streamId: pulumi.Input.fromValue(map['streamId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
