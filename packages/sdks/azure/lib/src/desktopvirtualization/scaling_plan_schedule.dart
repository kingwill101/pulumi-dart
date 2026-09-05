// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanSchedule {
  /// A list of Days of the Week on which this schedule will be used. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`
  final pulumi.Input<List<String>> daysOfWeeks;
  /// The name of the schedule.
  final pulumi.Input<String> name;
  /// The load Balancing Algorithm to use during Off-Peak Hours. Possible values are `DepthFirst` and `BreadthFirst`.
  final pulumi.Input<String> offPeakLoadBalancingAlgorithm;
  /// The time at which Off-Peak scaling will begin. This is also the end-time for the Ramp-Down period. The time must be specified in "HH:MM" format.
  final pulumi.Input<String> offPeakStartTime;
  /// The load Balancing Algorithm to use during Peak Hours. Possible values are `DepthFirst` and `BreadthFirst`.
  final pulumi.Input<String> peakLoadBalancingAlgorithm;
  /// The time at which Peak scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  final pulumi.Input<String> peakStartTime;
  /// This is the value in percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-down and off-peak hours. For example, if capacity threshold is specified as 60% and your total host pool capacity is 100 sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of 60 sessions.
  final pulumi.Input<int> rampDownCapacityThresholdPercent;
  /// Whether users will be forced to log-off session hosts once the `rampDownWaitTimeMinutes` value has been exceeded during the Ramp-Down period. Possible values are `true` and `false`.
  final pulumi.Input<bool> rampDownForceLogoffUsers;
  /// The load Balancing Algorithm to use during the Ramp-Down period. Possible values are `DepthFirst` and `BreadthFirst`.
  final pulumi.Input<String> rampDownLoadBalancingAlgorithm;
  /// The minimum percentage of session host virtual machines that you would like to get to for ramp-down and off-peak hours. For example, if Minimum percentage of hosts is specified as 10% and total number of session hosts in your host pool is 10, autoscale will ensure a minimum of 1 session host is available to take user connections.
  final pulumi.Input<int> rampDownMinimumHostsPercent;
  /// The notification message to send to users during Ramp-Down period when they are required to log-off.
  final pulumi.Input<String> rampDownNotificationMessage;
  /// The time at which Ramp-Down scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  final pulumi.Input<String> rampDownStartTime;
  /// Controls Session Host shutdown behaviour during Ramp-Down period. Session Hosts can either be shutdown when all sessions on the Session Host have ended, or when there are no Active sessions left on the Session Host. Possible values are `ZeroSessions` and `ZeroActiveSessions`.
  final pulumi.Input<String> rampDownStopHostsWhen;
  /// The number of minutes during Ramp-Down period that autoscale will wait after setting the session host VMs to drain mode, notifying any currently signed in users to save their work before forcing the users to logoff. Once all user sessions on the session host VM have been logged off, Autoscale will shut down the VM.
  final pulumi.Input<int> rampDownWaitTimeMinutes;
  /// This is the value of percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-up and peak hours. For example, if capacity threshold is specified as `60%` and your total host pool capacity is `100` sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of `60` sessions.
  final pulumi.Input<int?>? rampUpCapacityThresholdPercent;
  /// The load Balancing Algorithm to use during the Ramp-Up period. Possible values are `DepthFirst` and `BreadthFirst`.
  final pulumi.Input<String> rampUpLoadBalancingAlgorithm;
  /// Specifies the minimum percentage of session host virtual machines to start during ramp-up for peak hours. For example, if Minimum percentage of hosts is specified as `10%` and total number of session hosts in your host pool is `10`, autoscale will ensure a minimum of `1` session host is available to take user connections.
  final pulumi.Input<int?>? rampUpMinimumHostsPercent;
  /// The time at which Ramp-Up scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  final pulumi.Input<String> rampUpStartTime;

  /// Creates a new [ScalingPlanSchedule].
  /// [daysOfWeeks] A list of Days of the Week on which this schedule will be used. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`
  /// [name] The name of the schedule.
  /// [offPeakLoadBalancingAlgorithm] The load Balancing Algorithm to use during Off-Peak Hours. Possible values are `DepthFirst` and `BreadthFirst`.
  /// [offPeakStartTime] The time at which Off-Peak scaling will begin. This is also the end-time for the Ramp-Down period. The time must be specified in "HH:MM" format.
  /// [peakLoadBalancingAlgorithm] The load Balancing Algorithm to use during Peak Hours. Possible values are `DepthFirst` and `BreadthFirst`.
  /// [peakStartTime] The time at which Peak scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  /// [rampDownCapacityThresholdPercent] This is the value in percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-down and off-peak hours. For example, if capacity threshold is specified as 60% and your total host pool capacity is 100 sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of 60 sessions.
  /// [rampDownForceLogoffUsers] Whether users will be forced to log-off session hosts once the `rampDownWaitTimeMinutes` value has been exceeded during the Ramp-Down period. Possible values are `true` and `false`.
  /// [rampDownLoadBalancingAlgorithm] The load Balancing Algorithm to use during the Ramp-Down period. Possible values are `DepthFirst` and `BreadthFirst`.
  /// [rampDownMinimumHostsPercent] The minimum percentage of session host virtual machines that you would like to get to for ramp-down and off-peak hours. For example, if Minimum percentage of hosts is specified as 10% and total number of session hosts in your host pool is 10, autoscale will ensure a minimum of 1 session host is available to take user connections.
  /// [rampDownNotificationMessage] The notification message to send to users during Ramp-Down period when they are required to log-off.
  /// [rampDownStartTime] The time at which Ramp-Down scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  /// [rampDownStopHostsWhen] Controls Session Host shutdown behaviour during Ramp-Down period. Session Hosts can either be shutdown when all sessions on the Session Host have ended, or when there are no Active sessions left on the Session Host. Possible values are `ZeroSessions` and `ZeroActiveSessions`.
  /// [rampDownWaitTimeMinutes] The number of minutes during Ramp-Down period that autoscale will wait after setting the session host VMs to drain mode, notifying any currently signed in users to save their work before forcing the users to logoff. Once all user sessions on the session host VM have been logged off, Autoscale will shut down the VM.
  /// [rampUpCapacityThresholdPercent] This is the value of percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-up and peak hours. For example, if capacity threshold is specified as `60%` and your total host pool capacity is `100` sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of `60` sessions.
  /// [rampUpLoadBalancingAlgorithm] The load Balancing Algorithm to use during the Ramp-Up period. Possible values are `DepthFirst` and `BreadthFirst`.
  /// [rampUpMinimumHostsPercent] Specifies the minimum percentage of session host virtual machines to start during ramp-up for peak hours. For example, if Minimum percentage of hosts is specified as `10%` and total number of session hosts in your host pool is `10`, autoscale will ensure a minimum of `1` session host is available to take user connections.
  /// [rampUpStartTime] The time at which Ramp-Up scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in "HH:MM" format.
  const ScalingPlanSchedule({
    required this.daysOfWeeks,
    required this.name,
    required this.offPeakLoadBalancingAlgorithm,
    required this.offPeakStartTime,
    required this.peakLoadBalancingAlgorithm,
    required this.peakStartTime,
    required this.rampDownCapacityThresholdPercent,
    required this.rampDownForceLogoffUsers,
    required this.rampDownLoadBalancingAlgorithm,
    required this.rampDownMinimumHostsPercent,
    required this.rampDownNotificationMessage,
    required this.rampDownStartTime,
    required this.rampDownStopHostsWhen,
    required this.rampDownWaitTimeMinutes,
    this.rampUpCapacityThresholdPercent,
    required this.rampUpLoadBalancingAlgorithm,
    this.rampUpMinimumHostsPercent,
    required this.rampUpStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': daysOfWeeks,
      'name': name,
      'offPeakLoadBalancingAlgorithm': offPeakLoadBalancingAlgorithm,
      'offPeakStartTime': offPeakStartTime,
      'peakLoadBalancingAlgorithm': peakLoadBalancingAlgorithm,
      'peakStartTime': peakStartTime,
      'rampDownCapacityThresholdPercent': rampDownCapacityThresholdPercent,
      'rampDownForceLogoffUsers': rampDownForceLogoffUsers,
      'rampDownLoadBalancingAlgorithm': rampDownLoadBalancingAlgorithm,
      'rampDownMinimumHostsPercent': rampDownMinimumHostsPercent,
      'rampDownNotificationMessage': rampDownNotificationMessage,
      'rampDownStartTime': rampDownStartTime,
      'rampDownStopHostsWhen': rampDownStopHostsWhen,
      'rampDownWaitTimeMinutes': rampDownWaitTimeMinutes,
      'rampUpCapacityThresholdPercent': ?rampUpCapacityThresholdPercent,
      'rampUpLoadBalancingAlgorithm': rampUpLoadBalancingAlgorithm,
      'rampUpMinimumHostsPercent': ?rampUpMinimumHostsPercent,
      'rampUpStartTime': rampUpStartTime,
    };
  }

  factory ScalingPlanSchedule.fromMap(Map<String, dynamic> map) {
    return ScalingPlanSchedule(
      daysOfWeeks: pulumi.Input.fromValue((map['daysOfWeeks'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      offPeakLoadBalancingAlgorithm: pulumi.Input.fromValue(map['offPeakLoadBalancingAlgorithm'] as String),
      offPeakStartTime: pulumi.Input.fromValue(map['offPeakStartTime'] as String),
      peakLoadBalancingAlgorithm: pulumi.Input.fromValue(map['peakLoadBalancingAlgorithm'] as String),
      peakStartTime: pulumi.Input.fromValue(map['peakStartTime'] as String),
      rampDownCapacityThresholdPercent: pulumi.Input.fromValue((map['rampDownCapacityThresholdPercent'] as num).toInt()),
      rampDownForceLogoffUsers: pulumi.Input.fromValue(map['rampDownForceLogoffUsers'] as bool),
      rampDownLoadBalancingAlgorithm: pulumi.Input.fromValue(map['rampDownLoadBalancingAlgorithm'] as String),
      rampDownMinimumHostsPercent: pulumi.Input.fromValue((map['rampDownMinimumHostsPercent'] as num).toInt()),
      rampDownNotificationMessage: pulumi.Input.fromValue(map['rampDownNotificationMessage'] as String),
      rampDownStartTime: pulumi.Input.fromValue(map['rampDownStartTime'] as String),
      rampDownStopHostsWhen: pulumi.Input.fromValue(map['rampDownStopHostsWhen'] as String),
      rampDownWaitTimeMinutes: pulumi.Input.fromValue((map['rampDownWaitTimeMinutes'] as num).toInt()),
      rampUpCapacityThresholdPercent: (() { final guardedValue = map['rampUpCapacityThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rampUpLoadBalancingAlgorithm: pulumi.Input.fromValue(map['rampUpLoadBalancingAlgorithm'] as String),
      rampUpMinimumHostsPercent: (() { final guardedValue = map['rampUpMinimumHostsPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rampUpStartTime: pulumi.Input.fromValue(map['rampUpStartTime'] as String),
    );
  }
}
