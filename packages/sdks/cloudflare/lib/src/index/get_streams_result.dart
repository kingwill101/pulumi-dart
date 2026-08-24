// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_streams_result_input.dart';
import 'get_streams_result_playback.dart';
import 'get_streams_result_public_details.dart';
import 'get_streams_result_status.dart';
import 'get_streams_result_watermark.dart';

class GetStreamsResult {
  /// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  final pulumi.Input<List<String>> allowedOrigins;
  /// The unique identifier of the source video this video was clipped from.
  final pulumi.Input<String> clippedFrom;
  /// The date and time the media item was created.
  final pulumi.Input<String> created;
  /// A user-defined identifier for the media creator.
  final pulumi.Input<String> creator;
  /// The duration of the video in seconds. A value of `-1` means the duration is unknown. The duration becomes available after the upload and before the video is ready.
  final pulumi.Input<double> duration;
  final pulumi.Input<GetStreamsResultInput> input;
  /// The live input ID used to upload a video with Stream Live.
  final pulumi.Input<String> liveInput;
  /// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  final pulumi.Input<int> maxDurationSeconds;
  /// The maximum size in bytes for the video upload.
  final pulumi.Input<int> maxSizeBytes;
  /// A user modifiable key-value store used to reference other systems of record for managing videos.
  final pulumi.Input<String> meta;
  /// The date and time the media item was last modified.
  final pulumi.Input<String> modified;
  final pulumi.Input<GetStreamsResultPlayback> playback;
  /// The video's preview page URI. This field is omitted until encoding is complete.
  final pulumi.Input<String> preview;
  /// Public details for the video including title, share link, channel link, and logo.
  final pulumi.Input<GetStreamsResultPublicDetails> publicDetails;
  /// Indicates whether the video is playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  final pulumi.Input<bool> readyToStream;
  /// Indicates the time at which the video became playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  final pulumi.Input<String> readyToStreamAt;
  /// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  final pulumi.Input<bool> requireSignedUrls;
  /// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  final pulumi.Input<String> scheduledDeletion;
  /// The size of the media item in bytes.
  final pulumi.Input<double> size;
  /// Specifies a detailed status for a video. If the `state` is `inprogress` or `error`, the `step` field returns `encoding` or `manifest`. If the `state` is `inprogress`, `pctComplete` returns a number between 0 and 100 to indicate the approximate percent of completion. If the `state` is `error`, `errorReasonCode` and `errorReasonText` provide additional details.
  final pulumi.Input<GetStreamsResultStatus> status;
  /// The media item's thumbnail URI. This field is omitted until encoding is complete.
  final pulumi.Input<String> thumbnail;
  /// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  final pulumi.Input<double> thumbnailTimestampPct;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> uid;
  /// The date and time when the video upload URL is no longer valid for direct user uploads.
  final pulumi.Input<String> uploadExpiry;
  /// The date and time the media item was uploaded.
  final pulumi.Input<String> uploaded;
  final pulumi.Input<GetStreamsResultWatermark> watermark;

  /// Creates a new [GetStreamsResult].
  /// [allowedOrigins] Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  /// [clippedFrom] The unique identifier of the source video this video was clipped from.
  /// [created] The date and time the media item was created.
  /// [creator] A user-defined identifier for the media creator.
  /// [duration] The duration of the video in seconds. A value of `-1` means the duration is unknown. The duration becomes available after the upload and before the video is ready.
  /// [input] Required.
  /// [liveInput] The live input ID used to upload a video with Stream Live.
  /// [maxDurationSeconds] The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  /// [maxSizeBytes] The maximum size in bytes for the video upload.
  /// [meta] A user modifiable key-value store used to reference other systems of record for managing videos.
  /// [modified] The date and time the media item was last modified.
  /// [playback] Required.
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
  /// [watermark] Required.
  const GetStreamsResult({
    required this.allowedOrigins,
    required this.clippedFrom,
    required this.created,
    required this.creator,
    required this.duration,
    required this.input,
    required this.liveInput,
    required this.maxDurationSeconds,
    required this.maxSizeBytes,
    required this.meta,
    required this.modified,
    required this.playback,
    required this.preview,
    required this.publicDetails,
    required this.readyToStream,
    required this.readyToStreamAt,
    required this.requireSignedUrls,
    required this.scheduledDeletion,
    required this.size,
    required this.status,
    required this.thumbnail,
    required this.thumbnailTimestampPct,
    required this.uid,
    required this.uploadExpiry,
    required this.uploaded,
    required this.watermark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'clippedFrom': clippedFrom,
      'created': created,
      'creator': creator,
      'duration': duration,
      'input': pulumi.Input.mapInputValue<GetStreamsResultInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'liveInput': liveInput,
      'maxDurationSeconds': maxDurationSeconds,
      'maxSizeBytes': maxSizeBytes,
      'meta': meta,
      'modified': modified,
      'playback': pulumi.Input.mapInputValue<GetStreamsResultPlayback, Map<String, dynamic>>(playback, (value) => value.toMap()),
      'preview': preview,
      'publicDetails': pulumi.Input.mapInputValue<GetStreamsResultPublicDetails, Map<String, dynamic>>(publicDetails, (value) => value.toMap()),
      'readyToStream': readyToStream,
      'readyToStreamAt': readyToStreamAt,
      'requireSignedUrls': requireSignedUrls,
      'scheduledDeletion': scheduledDeletion,
      'size': size,
      'status': pulumi.Input.mapInputValue<GetStreamsResultStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'thumbnail': thumbnail,
      'thumbnailTimestampPct': thumbnailTimestampPct,
      'uid': uid,
      'uploadExpiry': uploadExpiry,
      'uploaded': uploaded,
      'watermark': pulumi.Input.mapInputValue<GetStreamsResultWatermark, Map<String, dynamic>>(watermark, (value) => value.toMap()),
    };
  }

  factory GetStreamsResult.fromMap(Map<String, dynamic> map) {
    return GetStreamsResult(
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      clippedFrom: pulumi.Input.fromValue(map['clippedFrom'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      creator: pulumi.Input.fromValue(map['creator'] as String),
      duration: pulumi.Input.fromValue((map['duration'] as num).toDouble()),
      input: pulumi.Input.fromValue(GetStreamsResultInput.fromMap((map['input']! as Map).cast<String, dynamic>())),
      liveInput: pulumi.Input.fromValue(map['liveInput'] as String),
      maxDurationSeconds: pulumi.Input.fromValue((map['maxDurationSeconds'] as num).toInt()),
      maxSizeBytes: pulumi.Input.fromValue((map['maxSizeBytes'] as num).toInt()),
      meta: pulumi.Input.fromValue(map['meta'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      playback: pulumi.Input.fromValue(GetStreamsResultPlayback.fromMap((map['playback']! as Map).cast<String, dynamic>())),
      preview: pulumi.Input.fromValue(map['preview'] as String),
      publicDetails: pulumi.Input.fromValue(GetStreamsResultPublicDetails.fromMap((map['publicDetails']! as Map).cast<String, dynamic>())),
      readyToStream: pulumi.Input.fromValue(map['readyToStream'] as bool),
      readyToStreamAt: pulumi.Input.fromValue(map['readyToStreamAt'] as String),
      requireSignedUrls: pulumi.Input.fromValue(map['requireSignedUrls'] as bool),
      scheduledDeletion: pulumi.Input.fromValue(map['scheduledDeletion'] as String),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      status: pulumi.Input.fromValue(GetStreamsResultStatus.fromMap((map['status']! as Map).cast<String, dynamic>())),
      thumbnail: pulumi.Input.fromValue(map['thumbnail'] as String),
      thumbnailTimestampPct: pulumi.Input.fromValue((map['thumbnailTimestampPct'] as num).toDouble()),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      uploadExpiry: pulumi.Input.fromValue(map['uploadExpiry'] as String),
      uploaded: pulumi.Input.fromValue(map['uploaded'] as String),
      watermark: pulumi.Input.fromValue(GetStreamsResultWatermark.fromMap((map['watermark']! as Map).cast<String, dynamic>())),
    );
  }
}
