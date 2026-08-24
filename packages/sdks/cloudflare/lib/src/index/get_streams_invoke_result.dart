// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_streams_result.dart';

/// Result data returned by getStreams.
class GetStreamsInvokeResult {
  /// The account identifier tag.
  final String? accountId;
  /// Alias for 'start'. Returns videos created after this date/time (RFC 3339 format).
  final String? after;
  /// Lists videos in ascending order of creation.
  final bool? asc;
  /// Alias for 'end'. Returns videos created before this date/time (RFC 3339 format).
  final String? before;
  /// A user-defined identifier for the media creator.
  final String? creator;
  /// Lists videos created before the specified date.
  final String? end;
  /// Filter by video ID(s). Can be a single ID or a comma-separated list of IDs.
  final String? id;
  /// Includes the total number of videos associated with the submitted query parameters.
  final bool? includeCounts;
  /// Maximum number of videos to return (default 1000, max 1000).
  final int? limit;
  /// Filter by live input ID to find videos associated with a specific live stream.
  final String? liveInputId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by video name/UID(s). Can be a single name or a comma-separated list.
  final String? name;
  /// The items returned by the data source
  final List<GetStreamsResult>? results;
  /// Provides a partial word match of the `name` key in the `meta` field. Slow for medium to large video libraries. May be unavailable for very large libraries.
  final String? search;
  /// Lists videos created after the specified date.
  final String? start;
  /// Specifies the processing status for all quality levels for a video.
  /// Available values: "pendingupload", "downloading", "queued", "inprogress", "ready", "error", "live-inprogress".
  final String? status;
  /// Specifies whether the video is `vod` or `live`.
  final String? type;
  /// Provides a fast, exact string match on the `name` key in the `meta` field.
  final String? videoName;

  /// Creates a new [GetStreamsInvokeResult].
  /// [accountId] The account identifier tag.
  /// [after] Alias for 'start'. Returns videos created after this date/time (RFC 3339 format).
  /// [asc] Lists videos in ascending order of creation.
  /// [before] Alias for 'end'. Returns videos created before this date/time (RFC 3339 format).
  /// [creator] A user-defined identifier for the media creator.
  /// [end] Lists videos created before the specified date.
  /// [id] Filter by video ID(s). Can be a single ID or a comma-separated list of IDs.
  /// [includeCounts] Includes the total number of videos associated with the submitted query parameters.
  /// [limit] Maximum number of videos to return (default 1000, max 1000).
  /// [liveInputId] Filter by live input ID to find videos associated with a specific live stream.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by video name/UID(s). Can be a single name or a comma-separated list.
  /// [results] The items returned by the data source
  /// [search] Provides a partial word match of the `name` key in the `meta` field. Slow for medium to large video libraries. May be unavailable for very large libraries.
  /// [start] Lists videos created after the specified date.
  /// [status] Specifies the processing status for all quality levels for a video.
  /// [type] Specifies whether the video is `vod` or `live`.
  /// [videoName] Provides a fast, exact string match on the `name` key in the `meta` field.
  const GetStreamsInvokeResult({
    this.accountId,
    this.after,
    this.asc,
    this.before,
    this.creator,
    this.end,
    this.id,
    this.includeCounts,
    this.limit,
    this.liveInputId,
    this.maxItems,
    this.name,
    this.results,
    this.search,
    this.start,
    this.status,
    this.type,
    this.videoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'after': ?after,
      'asc': ?asc,
      'before': ?before,
      'creator': ?creator,
      'end': ?end,
      'id': ?id,
      'includeCounts': ?includeCounts,
      'limit': ?limit,
      'liveInputId': ?liveInputId,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStreamsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'start': ?start,
      'status': ?status,
      'type': ?type,
      'videoName': ?videoName,
    };
  }

  factory GetStreamsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetStreamsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asc: (() { final guardedValue = map['asc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeCounts: (() { final guardedValue = map['includeCounts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      liveInputId: (() { final guardedValue = map['liveInputId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStreamsResult>(guardedValue, (value) => GetStreamsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      videoName: (() { final guardedValue = map['videoName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
