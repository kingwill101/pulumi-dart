// ignore_for_file: unused_element, unnecessary_cast

import 'timeline_results_metadata_response.dart';

/// Result data returned by getEntitiesGetTimeline.
class GetEntitiesGetTimelineResult {
  /// The metadata from the timeline operation results.
  final TimelineResultsMetadataResponse? metaData;
  /// The timeline result values.
  final List<dynamic>? value;

  /// Creates a new [GetEntitiesGetTimelineResult].
  /// [metaData] The metadata from the timeline operation results.
  /// [value] The timeline result values.
  const GetEntitiesGetTimelineResult({
    this.metaData,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': ?metaData?.toMap(),
      'value': ?value,
    };
  }

  factory GetEntitiesGetTimelineResult.fromMap(Map<String, dynamic> map) {
    return GetEntitiesGetTimelineResult(
      metaData: (() { final guardedValue = map['metaData']; if (guardedValue == null) return null; return TimelineResultsMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
