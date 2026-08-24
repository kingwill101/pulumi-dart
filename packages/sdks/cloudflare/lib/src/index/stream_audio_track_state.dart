// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_audio_track_audio.dart';

/// Input properties used for looking up and filtering StreamAudioTrack resources.
class StreamAudioTrackState {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The unique identifier for an additional audio track.
  final pulumi.Input<String?>? audioIdentifier;
  /// Array of audio tracks for the video.
  final pulumi.Input<List<StreamAudioTrackAudio>?>? audios;
  /// Denotes whether the audio track will be played by default in a player.
  final pulumi.Input<bool?>? default_;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? identifier;
  /// A string to uniquely identify the track amongst other audio track labels for the specified video.
  final pulumi.Input<String?>? label;
  /// Specifies the processing status of the video.
  /// Available values: "queued", "ready", "error".
  final pulumi.Input<String?>? status;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? uid;

  /// Creates a new [StreamAudioTrackState].
  /// [accountId] The account identifier tag.
  /// [audioIdentifier] The unique identifier for an additional audio track.
  /// [audios] Array of audio tracks for the video.
  /// [default_] Denotes whether the audio track will be played by default in a player.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [label] A string to uniquely identify the track amongst other audio track labels for the specified video.
  /// [status] Specifies the processing status of the video.
  /// [uid] A Cloudflare-generated unique identifier for a media item.
  const StreamAudioTrackState({
    this.accountId,
    this.audioIdentifier,
    this.audios,
    this.default_,
    this.identifier,
    this.label,
    this.status,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'audioIdentifier': ?audioIdentifier,
      'audios': ?pulumi.Input.mapOptionalInputValue<List<StreamAudioTrackAudio>, List<Map<String, dynamic>>>(audios, (value) => pulumi.Input.encodeList<StreamAudioTrackAudio, Map<String, dynamic>>(value, (value) => value.toMap())),
      'default': ?default_,
      'identifier': ?identifier,
      'label': ?label,
      'status': ?status,
      'uid': ?uid,
    };
  }

  factory StreamAudioTrackState.fromMap(Map<String, dynamic> map) {
    return StreamAudioTrackState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioIdentifier: (() { final guardedValue = map['audioIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audios: (() { final guardedValue = map['audios']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamAudioTrackAudio>(guardedValue, (value) => StreamAudioTrackAudio.fromMap((value as Map).cast<String, dynamic>()))); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
