// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_response.dart';

/// Summary statistics about the replayed log entries.
class GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse {
  /// The number of replayed log entries with a difference between baseline and simulated policies.
  final pulumi.Input<int> differenceCount;
  /// The number of log entries that could not be replayed.
  final pulumi.Input<int> errorCount;
  /// The total number of log entries replayed.
  final pulumi.Input<int> logCount;
  /// The date of the newest log entry replayed.
  final pulumi.Input<GoogleTypeDateResponse> newestDate;
  /// The date of the oldest log entry replayed.
  final pulumi.Input<GoogleTypeDateResponse> oldestDate;
  /// The number of replayed log entries with no difference between baseline and simulated policies.
  final pulumi.Input<int> unchangedCount;

  /// Creates a new [GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse].
  /// [differenceCount] The number of replayed log entries with a difference between baseline and simulated policies.
  /// [errorCount] The number of log entries that could not be replayed.
  /// [logCount] The total number of log entries replayed.
  /// [newestDate] The date of the newest log entry replayed.
  /// [oldestDate] The date of the oldest log entry replayed.
  /// [unchangedCount] The number of replayed log entries with no difference between baseline and simulated policies.
  const GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse({
    required this.differenceCount,
    required this.errorCount,
    required this.logCount,
    required this.newestDate,
    required this.oldestDate,
    required this.unchangedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'differenceCount': differenceCount,
      'errorCount': errorCount,
      'logCount': logCount,
      'newestDate': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(newestDate, (value) => value.toMap()),
      'oldestDate': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(oldestDate, (value) => value.toMap()),
      'unchangedCount': unchangedCount,
    };
  }

  factory GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse(
      differenceCount: pulumi.Input.fromValue(map['differenceCount'] as int),
      errorCount: pulumi.Input.fromValue(map['errorCount'] as int),
      logCount: pulumi.Input.fromValue(map['logCount'] as int),
      newestDate: pulumi.Input.fromValue(GoogleTypeDateResponse.fromMap((map['newestDate']! as Map).cast<String, dynamic>())),
      oldestDate: pulumi.Input.fromValue(GoogleTypeDateResponse.fromMap((map['oldestDate']! as Map).cast<String, dynamic>())),
      unchangedCount: pulumi.Input.fromValue(map['unchangedCount'] as int),
    );
  }
}

