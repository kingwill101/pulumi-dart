// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputSrt {
  /// The secret key to use when streaming via SRT to a live input.
  final pulumi.Input<String> passphrase;
  /// The identifier of the live input to use when streaming via SRT.
  final pulumi.Input<String> streamId;
  /// The SRT URL you provide to the broadcaster, which they stream live video to.
  final pulumi.Input<String> url;

  /// Creates a new [GetStreamLiveInputSrt].
  /// [passphrase] The secret key to use when streaming via SRT to a live input.
  /// [streamId] The identifier of the live input to use when streaming via SRT.
  /// [url] The SRT URL you provide to the broadcaster, which they stream live video to.
  const GetStreamLiveInputSrt({
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

  factory GetStreamLiveInputSrt.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputSrt(
      passphrase: pulumi.Input.fromValue(map['passphrase'] as String),
      streamId: pulumi.Input.fromValue(map['streamId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
