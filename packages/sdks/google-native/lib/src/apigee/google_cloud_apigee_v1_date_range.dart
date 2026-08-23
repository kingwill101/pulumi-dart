// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Date range of the data to export.
class GoogleCloudApigeeV1DateRange {
  /// End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which will not be in the output.
  final pulumi.Input<String> end;
  /// Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 00:00:00 UTC on the start date.
  final pulumi.Input<String> start;

  /// Creates a new [GoogleCloudApigeeV1DateRange].
  /// [end] End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which will not be in the output.
  /// [start] Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 00:00:00 UTC on the start date.
  const GoogleCloudApigeeV1DateRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GoogleCloudApigeeV1DateRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DateRange(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
