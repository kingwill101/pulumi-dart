// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputSrt {
  /// The secret key to use when streaming via SRT to a live input.
  final pulumi.Input<String?>? passphrase;
  /// The identifier of the live input to use when streaming via SRT.
  final pulumi.Input<String?>? streamId;
  /// The SRT URL you provide to the broadcaster, which they stream live video to.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputSrt].
  /// [passphrase] The secret key to use when streaming via SRT to a live input.
  /// [streamId] The identifier of the live input to use when streaming via SRT.
  /// [url] The SRT URL you provide to the broadcaster, which they stream live video to.
  const StreamLiveInputSrt({
    this.passphrase,
    this.streamId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passphrase': ?passphrase,
      'streamId': ?streamId,
      'url': ?url,
    };
  }

  factory StreamLiveInputSrt.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputSrt(
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
