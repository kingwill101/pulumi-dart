// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_timeline_item_response.dart';
import 'timeline_results_metadata_response.dart';

/// Result data returned by getEntitiesGetTimeline.
class GetEntitiesGetTimelineResult {
  /// The metadata from the timeline operation results.
  final TimelineResultsMetadataResponse? metaData;

  /// The timeline result values.
  final List<ActivityTimelineItemResponse>? value;

  /// Creates a new [GetEntitiesGetTimelineResult].
  /// [metaData] The metadata from the timeline operation results.
  /// [value] The timeline result values.
  GetEntitiesGetTimelineResult({this.metaData, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': ?metaData?.toMap(),
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ActivityTimelineItemResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetEntitiesGetTimelineResult.fromMap(Map<String, dynamic> map) {
    return GetEntitiesGetTimelineResult(
      metaData: (() {
        final guardedValue = map['metaData'];
        if (guardedValue == null) return null;
        return TimelineResultsMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ActivityTimelineItemResponse>(
          guardedValue,
          (value) => ActivityTimelineItemResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
