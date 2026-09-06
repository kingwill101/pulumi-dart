// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Search job execution statistics.
class ResultStatisticsResponse {
  /// The number of rows that were returned by the search job.
  final pulumi.Input<int> ingestedRecords;
  /// Search job completion percentage.
  final pulumi.Input<double> progress;
  /// Search job: Amount of scanned data.
  final pulumi.Input<double> scannedGb;

  /// Creates a new [ResultStatisticsResponse].
  /// [ingestedRecords] The number of rows that were returned by the search job.
  /// [progress] Search job completion percentage.
  /// [scannedGb] Search job: Amount of scanned data.
  const ResultStatisticsResponse({
    required this.ingestedRecords,
    required this.progress,
    required this.scannedGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestedRecords': ingestedRecords,
      'progress': progress,
      'scannedGb': scannedGb,
    };
  }

  factory ResultStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return ResultStatisticsResponse(
      ingestedRecords: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['ingestedRecords'])),
      progress: pulumi.Input.fromValue((map['progress'] as num).toDouble()),
      scannedGb: pulumi.Input.fromValue((map['scannedGb'] as num).toDouble()),
    );
  }
}
