// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputSrtPlayback {
  /// The secret key to use for playback via SRT.
  final pulumi.Input<String?>? passphrase;
  /// The identifier of the live input to use for playback via SRT.
  final pulumi.Input<String?>? streamId;
  /// The URL used to play live video over SRT.
  final pulumi.Input<String?>? url;

  /// Creates a new [StreamLiveInputSrtPlayback].
  /// [passphrase] The secret key to use for playback via SRT.
  /// [streamId] The identifier of the live input to use for playback via SRT.
  /// [url] The URL used to play live video over SRT.
  const StreamLiveInputSrtPlayback({
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

  factory StreamLiveInputSrtPlayback.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputSrtPlayback(
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
