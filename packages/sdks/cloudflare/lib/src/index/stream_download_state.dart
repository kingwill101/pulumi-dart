// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_download_audio.dart';
import 'stream_download_default.dart';

/// Input properties used for looking up and filtering StreamDownload resources.
class StreamDownloadState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The audio-only download. Only present if this download type has been created.
  final pulumi.Input<StreamDownloadAudio?>? audio;
  /// The default video download. Only present if this download type has been created.
  final pulumi.Input<StreamDownloadDefault?>? default_;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? identifier;

  /// Creates a new [StreamDownloadState].
  /// [accountId] Identifier.
  /// [audio] The audio-only download. Only present if this download type has been created.
  /// [default_] The default video download. Only present if this download type has been created.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const StreamDownloadState({
    this.accountId,
    this.audio,
    this.default_,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'audio': ?pulumi.Input.mapOptionalInputValue<StreamDownloadAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'default': ?pulumi.Input.mapOptionalInputValue<StreamDownloadDefault, Map<String, dynamic>>(default_, (value) => value.toMap()),
      'identifier': ?identifier,
    };
  }

  factory StreamDownloadState.fromMap(Map<String, dynamic> map) {
    return StreamDownloadState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamDownloadAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamDownloadDefault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
