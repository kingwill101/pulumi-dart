// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_audio_track_get_stream_audio_track_args_doc}
/// Arguments for getStreamAudioTrack.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_audio_track_get_stream_audio_track_args_doc}
class GetStreamAudioTrackArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;

  /// Creates a new [GetStreamAudioTrackArgs].
  /// [accountId] The account identifier tag.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const GetStreamAudioTrackArgs({
    required this.accountId,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
    };
  }

  factory GetStreamAudioTrackArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamAudioTrackArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
