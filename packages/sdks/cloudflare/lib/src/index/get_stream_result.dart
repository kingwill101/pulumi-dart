// ignore_for_file: unused_element, unnecessary_cast

import 'get_stream_input.dart';
import 'get_stream_playback.dart';
import 'get_stream_public_details.dart';
import 'get_stream_status.dart';
import 'get_stream_watermark.dart';

/// Result data returned by getStream.
class GetStreamResult {
  /// The account identifier tag.
  final String? accountId;
  /// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  final List<String>? allowedOrigins;
  /// The unique identifier of the source video this video was clipped from.
  final String? clippedFrom;
  /// The date and time the media item was created.
  final String? created;
  /// A user-defined identifier for the media creator.
  final String? creator;
  /// The duration of the video in seconds. A value of `-1` means the duration is unknown. The duration becomes available after the upload and before the video is ready.
  final double? duration;
  /// A Cloudflare-generated unique identifier for a media item.
  final String? identifier;
  final GetStreamInput? input;
  /// The live input ID used to upload a video with Stream Live.
  final String? liveInput;
  /// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  final int? maxDurationSeconds;
  /// The maximum size in bytes for the video upload.
  final int? maxSizeBytes;
  /// A user modifiable key-value store used to reference other systems of record for managing videos.
  final String? meta;
  /// The date and time the media item was last modified.
  final String? modified;
  final GetStreamPlayback? playback;
  /// The video's preview page URI. This field is omitted until encoding is complete.
  final String? preview;
  /// Public details for the video including title, share link, channel link, and logo.
  final GetStreamPublicDetails? publicDetails;
  /// Indicates whether the video is playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  final bool? readyToStream;
  /// Indicates the time at which the video became playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  final String? readyToStreamAt;
  /// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  final bool? requireSignedUrls;
  /// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  final String? scheduledDeletion;
  /// The size of the media item in bytes.
  final double? size;
  /// Specifies a detailed status for a video. If the `state` is `inprogress` or `error`, the `step` field returns `encoding` or `manifest`. If the `state` is `inprogress`, `pctComplete` returns a number between 0 and 100 to indicate the approximate percent of completion. If the `state` is `error`, `errorReasonCode` and `errorReasonText` provide additional details.
  final GetStreamStatus? status;
  /// The media item's thumbnail URI. This field is omitted until encoding is complete.
  final String? thumbnail;
  /// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  final double? thumbnailTimestampPct;
  /// A Cloudflare-generated unique identifier for a media item.
  final String? uid;
  /// The date and time when the video upload URL is no longer valid for direct user uploads.
  final String? uploadExpiry;
  /// The date and time the media item was uploaded.
  final String? uploaded;
  final GetStreamWatermark? watermark;

  /// Creates a new [GetStreamResult].
  /// [accountId] The account identifier tag.
  /// [allowedOrigins] Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  /// [clippedFrom] The unique identifier of the source video this video was clipped from.
  /// [created] The date and time the media item was created.
  /// [creator] A user-defined identifier for the media creator.
  /// [duration] The duration of the video in seconds. A value of `-1` means the duration is unknown. The duration becomes available after the upload and before the video is ready.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [input] Optional.
  /// [liveInput] The live input ID used to upload a video with Stream Live.
  /// [maxDurationSeconds] The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  /// [maxSizeBytes] The maximum size in bytes for the video upload.
  /// [meta] A user modifiable key-value store used to reference other systems of record for managing videos.
  /// [modified] The date and time the media item was last modified.
  /// [playback] Optional.
  /// [preview] The video's preview page URI. This field is omitted until encoding is complete.
  /// [publicDetails] Public details for the video including title, share link, channel link, and logo.
  /// [readyToStream] Indicates whether the video is playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  /// [readyToStreamAt] Indicates the time at which the video became playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  /// [requireSignedUrls] Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  /// [scheduledDeletion] Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  /// [size] The size of the media item in bytes.
  /// [status] Specifies a detailed status for a video. If the `state` is `inprogress` or `error`, the `step` field returns `encoding` or `manifest`. If the `state` is `inprogress`, `pctComplete` returns a number between 0 and 100 to indicate the approximate percent of completion. If the `state` is `error`, `errorReasonCode` and `errorReasonText` provide additional details.
  /// [thumbnail] The media item's thumbnail URI. This field is omitted until encoding is complete.
  /// [thumbnailTimestampPct] The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  /// [uid] A Cloudflare-generated unique identifier for a media item.
  /// [uploadExpiry] The date and time when the video upload URL is no longer valid for direct user uploads.
  /// [uploaded] The date and time the media item was uploaded.
  /// [watermark] Optional.
  const GetStreamResult({
    this.accountId,
    this.allowedOrigins,
    this.clippedFrom,
    this.created,
    this.creator,
    this.duration,
    this.identifier,
    this.input,
    this.liveInput,
    this.maxDurationSeconds,
    this.maxSizeBytes,
    this.meta,
    this.modified,
    this.playback,
    this.preview,
    this.publicDetails,
    this.readyToStream,
    this.readyToStreamAt,
    this.requireSignedUrls,
    this.scheduledDeletion,
    this.size,
    this.status,
    this.thumbnail,
    this.thumbnailTimestampPct,
    this.uid,
    this.uploadExpiry,
    this.uploaded,
    this.watermark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowedOrigins': ?allowedOrigins,
      'clippedFrom': ?clippedFrom,
      'created': ?created,
      'creator': ?creator,
      'duration': ?duration,
      'identifier': ?identifier,
      'input': ?input?.toMap(),
      'liveInput': ?liveInput,
      'maxDurationSeconds': ?maxDurationSeconds,
      'maxSizeBytes': ?maxSizeBytes,
      'meta': ?meta,
      'modified': ?modified,
      'playback': ?playback?.toMap(),
      'preview': ?preview,
      'publicDetails': ?publicDetails?.toMap(),
      'readyToStream': ?readyToStream,
      'readyToStreamAt': ?readyToStreamAt,
      'requireSignedUrls': ?requireSignedUrls,
      'scheduledDeletion': ?scheduledDeletion,
      'size': ?size,
      'status': ?status?.toMap(),
      'thumbnail': ?thumbnail,
      'thumbnailTimestampPct': ?thumbnailTimestampPct,
      'uid': ?uid,
      'uploadExpiry': ?uploadExpiry,
      'uploaded': ?uploaded,
      'watermark': ?watermark?.toMap(),
    };
  }

  factory GetStreamResult.fromMap(Map<String, dynamic> map) {
    return GetStreamResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clippedFrom: (() { final guardedValue = map['clippedFrom']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return GetStreamInput.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      liveInput: (() { final guardedValue = map['liveInput']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDurationSeconds: (() { final guardedValue = map['maxDurationSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      playback: (() { final guardedValue = map['playback']; if (guardedValue == null) return null; return GetStreamPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDetails: (() { final guardedValue = map['publicDetails']; if (guardedValue == null) return null; return GetStreamPublicDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      readyToStream: (() { final guardedValue = map['readyToStream']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      readyToStreamAt: (() { final guardedValue = map['readyToStreamAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requireSignedUrls: (() { final guardedValue = map['requireSignedUrls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scheduledDeletion: (() { final guardedValue = map['scheduledDeletion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return GetStreamStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      thumbnail: (() { final guardedValue = map['thumbnail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbnailTimestampPct: (() { final guardedValue = map['thumbnailTimestampPct']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadExpiry: (() { final guardedValue = map['uploadExpiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploaded: (() { final guardedValue = map['uploaded']; if (guardedValue == null) return null; return guardedValue as String; })(),
      watermark: (() { final guardedValue = map['watermark']; if (guardedValue == null) return null; return GetStreamWatermark.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
