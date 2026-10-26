// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource {
  /// Optional. Limits the bytes billed for each BigQuery query job.
  final pulumi.Input<int?>? bigQueryMaxBilledBytes;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource].
  /// [bigQueryMaxBilledBytes] Optional. Limits the bytes billed for each BigQuery query job.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource({
    this.bigQueryMaxBilledBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryMaxBilledBytes': ?bigQueryMaxBilledBytes,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource(
      bigQueryMaxBilledBytes: (() { final guardedValue = map['bigQueryMaxBilledBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
