// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanExecutionSpecTriggerOneTime {
  /// Time to live for the DataScan and its results after the one-time run completes. Accepts a string with a unit suffix 's' (e.g., '7200s'). Default is 24 hours. Ranges between 0 and 31536000 seconds (1 year).
  final pulumi.Input<String>? ttlAfterScanCompletion;

  /// Creates a new [DatascanExecutionSpecTriggerOneTime].
  /// [ttlAfterScanCompletion] Time to live for the DataScan and its results after the one-time run completes. Accepts a string with a unit suffix 's' (e.g., '7200s'). Default is 24 hours. Ranges between 0 and 31536000 seconds (1 year).
  DatascanExecutionSpecTriggerOneTime({
    this.ttlAfterScanCompletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttlAfterScanCompletion': ?ttlAfterScanCompletion,
    };
  }

  factory DatascanExecutionSpecTriggerOneTime.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionSpecTriggerOneTime(
      ttlAfterScanCompletion: map['ttlAfterScanCompletion'] == null ? null : (map['ttlAfterScanCompletion'] as String).input(),
    );
  }
}

