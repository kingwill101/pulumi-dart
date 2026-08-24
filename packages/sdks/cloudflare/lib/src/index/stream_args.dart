// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_public_details.dart';

/// {@template pulumi_index_stream_stream_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_index_stream_stream_args_doc}
class StreamArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// A user-defined identifier for the media creator.
  final pulumi.Input<String?>? creator;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? identifier;
  /// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  final pulumi.Input<int?>? maxDurationSeconds;
  /// A user modifiable key-value store used to reference other systems of record for managing videos.
  final pulumi.Input<String?>? meta;
  /// Public details for the video including title, share link, channel link, and logo.
  final pulumi.Input<StreamPublicDetails?>? publicDetails;
  /// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  final pulumi.Input<bool?>? requireSignedUrls;
  /// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  final pulumi.Input<String?>? scheduledDeletion;
  /// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  final pulumi.Input<double?>? thumbnailTimestampPct;
  /// The unique identifier for the video. Can be used to verify the video being updated.
  final pulumi.Input<String?>? uid;
  /// The date and time when the video upload URL is no longer valid for direct user uploads.
  final pulumi.Input<String?>? uploadExpiry;

  /// Creates a new [StreamArgs].
  /// [accountId] The account identifier tag.
  /// [allowedOrigins] Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  /// [creator] A user-defined identifier for the media creator.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [maxDurationSeconds] The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  /// [meta] A user modifiable key-value store used to reference other systems of record for managing videos.
  /// [publicDetails] Public details for the video including title, share link, channel link, and logo.
  /// [requireSignedUrls] Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  /// [scheduledDeletion] Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  /// [thumbnailTimestampPct] The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  /// [uid] The unique identifier for the video. Can be used to verify the video being updated.
  /// [uploadExpiry] The date and time when the video upload URL is no longer valid for direct user uploads.
  const StreamArgs({
    required this.accountId,
    this.allowedOrigins,
    this.creator,
    this.identifier,
    this.maxDurationSeconds,
    this.meta,
    this.publicDetails,
    this.requireSignedUrls,
    this.scheduledDeletion,
    this.thumbnailTimestampPct,
    this.uid,
    this.uploadExpiry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'allowedOrigins': ?allowedOrigins,
      'creator': ?creator,
      'identifier': ?identifier,
      'maxDurationSeconds': ?maxDurationSeconds,
      'meta': ?meta,
      'publicDetails': ?pulumi.Input.mapOptionalInputValue<StreamPublicDetails, Map<String, dynamic>>(publicDetails, (value) => value.toMap()),
      'requireSignedUrls': ?requireSignedUrls,
      'scheduledDeletion': ?scheduledDeletion,
      'thumbnailTimestampPct': ?thumbnailTimestampPct,
      'uid': ?uid,
      'uploadExpiry': ?uploadExpiry,
    };
  }

  factory StreamArgs.fromMap(Map<String, dynamic> map) {
    return StreamArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDurationSeconds: (() { final guardedValue = map['maxDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDetails: (() { final guardedValue = map['publicDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamPublicDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireSignedUrls: (() { final guardedValue = map['requireSignedUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduledDeletion: (() { final guardedValue = map['scheduledDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbnailTimestampPct: (() { final guardedValue = map['thumbnailTimestampPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadExpiry: (() { final guardedValue = map['uploadExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
