// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorDowntimeEndRepeat {
  /// A date, on which the Monitor Downtime's repeat cycle is expected to end.
  final pulumi.Input<String>? onDate;
  /// Number of repetitions after which the Monitor Downtime's repeat cycle is expected to end.
  final pulumi.Input<int>? onRepeat;

  /// Creates a new [MonitorDowntimeEndRepeat].
  /// [onDate] A date, on which the Monitor Downtime's repeat cycle is expected to end.
  /// [onRepeat] Number of repetitions after which the Monitor Downtime's repeat cycle is expected to end.
  MonitorDowntimeEndRepeat({
    this.onDate,
    this.onRepeat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDate': ?onDate,
      'onRepeat': ?onRepeat,
    };
  }

  factory MonitorDowntimeEndRepeat.fromMap(Map<String, dynamic> map) {
    return MonitorDowntimeEndRepeat(
      onDate: map['onDate'] == null ? null : (map['onDate']! as String).input(),
      onRepeat: map['onRepeat'] == null ? null : (map['onRepeat']! as int).input(),
    );
  }
}

