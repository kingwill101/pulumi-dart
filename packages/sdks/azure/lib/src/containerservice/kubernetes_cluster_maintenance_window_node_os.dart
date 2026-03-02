// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_maintenance_window_node_os_not_allowed.dart';

class KubernetesClusterMaintenanceWindowNodeOs {
  /// The day of the month for the maintenance run. Required in combination with AbsoluteMonthly frequency. Value between 0 and 31 (inclusive).
  final pulumi.Input<int>? dayOfMonth;
  /// The day of the week for the maintenance run. Required in combination with weekly frequency. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final pulumi.Input<String>? dayOfWeek;
  /// The duration of the window for maintenance to run in hours. Possible options are between `4` to `24`.
  final pulumi.Input<int> duration;
  /// Frequency of maintenance. Possible options are `Daily`, `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.
  final pulumi.Input<String> frequency;
  /// The interval for maintenance runs. Depending on the frequency this interval is week or month based.
  final pulumi.Input<int> interval;
  /// One or more `not_allowed` block as defined below.
  final pulumi.Input<List<KubernetesClusterMaintenanceWindowNodeOsNotAllowed>>? notAlloweds;
  /// The date on which the maintenance window begins to take effect.
  final pulumi.Input<String>? startDate;
  /// The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.
  final pulumi.Input<String>? startTime;
  /// Used to determine the timezone for cluster maintenance.
  final pulumi.Input<String>? utcOffset;
  /// The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.
  final pulumi.Input<String>? weekIndex;

  /// Creates a new [KubernetesClusterMaintenanceWindowNodeOs].
  /// [dayOfMonth] The day of the month for the maintenance run. Required in combination with AbsoluteMonthly frequency. Value between 0 and 31 (inclusive).
  /// [dayOfWeek] The day of the week for the maintenance run. Required in combination with weekly frequency. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  /// [duration] The duration of the window for maintenance to run in hours. Possible options are between `4` to `24`.
  /// [frequency] Frequency of maintenance. Possible options are `Daily`, `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.
  /// [interval] The interval for maintenance runs. Depending on the frequency this interval is week or month based.
  /// [notAlloweds] One or more `not_allowed` block as defined below.
  /// [startDate] The date on which the maintenance window begins to take effect.
  /// [startTime] The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.
  /// [utcOffset] Used to determine the timezone for cluster maintenance.
  /// [weekIndex] The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.
  KubernetesClusterMaintenanceWindowNodeOs({
    this.dayOfMonth,
    this.dayOfWeek,
    required this.duration,
    required this.frequency,
    required this.interval,
    this.notAlloweds,
    this.startDate,
    this.startTime,
    this.utcOffset,
    this.weekIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'dayOfWeek': ?dayOfWeek,
      'duration': duration,
      'frequency': frequency,
      'interval': interval,
      'notAlloweds': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterMaintenanceWindowNodeOsNotAllowed>, List<Map<String, dynamic>>>(notAlloweds, (value) => pulumi.Input.encodeList<KubernetesClusterMaintenanceWindowNodeOsNotAllowed, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startDate': ?startDate,
      'startTime': ?startTime,
      'utcOffset': ?utcOffset,
      'weekIndex': ?weekIndex,
    };
  }

  factory KubernetesClusterMaintenanceWindowNodeOs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindowNodeOs(
      dayOfMonth: map['dayOfMonth'] == null ? null : (map['dayOfMonth']! as int).input(),
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek']! as String).input(),
      duration: (map['duration'] as int).input(),
      frequency: (map['frequency'] as String).input(),
      interval: (map['interval'] as int).input(),
      notAlloweds: map['notAlloweds'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterMaintenanceWindowNodeOsNotAllowed>(map['notAlloweds']!, (value) => KubernetesClusterMaintenanceWindowNodeOsNotAllowed.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startDate: map['startDate'] == null ? null : (map['startDate']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      utcOffset: map['utcOffset'] == null ? null : (map['utcOffset']! as String).input(),
      weekIndex: map['weekIndex'] == null ? null : (map['weekIndex']! as String).input(),
    );
  }
}

