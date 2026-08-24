// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_audio_track_audio.dart';

/// Result data returned by getStreamAudioTrack.
class GetStreamAudioTrackResult {
  /// The account identifier tag.
  final String? accountId;
  /// Array of audio tracks for the video.
  final List<GetStreamAudioTrackAudio>? audios;
  /// A Cloudflare-generated unique identifier for a media item.
  final String? identifier;

  /// Creates a new [GetStreamAudioTrackResult].
  /// [accountId] The account identifier tag.
  /// [audios] Array of audio tracks for the video.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const GetStreamAudioTrackResult({
    this.accountId,
    this.audios,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'audios': ?(() { final guardedValue = audios; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStreamAudioTrackAudio, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'identifier': ?identifier,
    };
  }

  factory GetStreamAudioTrackResult.fromMap(Map<String, dynamic> map) {
    return GetStreamAudioTrackResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      audios: (() { final guardedValue = map['audios']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStreamAudioTrackAudio>(guardedValue, (value) => GetStreamAudioTrackAudio.fromMap((value as Map).cast<String, dynamic>())); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
