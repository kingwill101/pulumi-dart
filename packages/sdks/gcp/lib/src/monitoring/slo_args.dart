// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_basic_sli.dart';
import 'slo_request_based_sli.dart';
import 'slo_windows_based_sli.dart';

/// {@template pulumi_monitoring_slo_slo_args_doc}
/// The set of arguments for Slo.
/// {@endtemplate}
/// {@macro pulumi_monitoring_slo_slo_args_doc}
class SloArgs {
  /// Basic Service-Level Indicator (SLI) on a well-known service type.
  /// Performance will be computed on the basis of pre-defined metrics.
  /// SLIs are used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloBasicSli>? basicSli;
  /// A calendar period, semantically "since the start of the current
  /// &lt;calendarPeriod&gt;".
  /// Possible values are: `DAY`, `WEEK`, `FORTNIGHT`, `MONTH`.
  final pulumi.Input<String>? calendarPeriod;
  /// Name used for UI elements listing this SLO.
  final pulumi.Input<String>? displayName;
  /// The fraction of service that must be good in order for this objective
  /// to be met. 0 &lt; goal &lt;= 0.999
  final pulumi.Input<double> goal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A request-based SLI defines a SLI for which atomic units of
  /// service are counted directly.
  /// A SLI describes a good service.
  /// It is used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloRequestBasedSli>? requestBasedSli;
  /// A rolling time period, semantically "in the past X days".
  /// Must be between 1 to 30 days, inclusive.
  final pulumi.Input<int>? rollingPeriodDays;
  /// ID of the service to which this SLO belongs.
  final pulumi.Input<String> service;
  /// The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  final pulumi.Input<String>? sloId;
  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;
  /// A windows-based SLI defines the criteria for time windows.
  /// good_service is defined based off the count of these time windows
  /// for which the provided service was of good quality.
  /// A SLI describes a good service. It is used to measure and calculate
  /// the quality of the Service's performance with respect to a single
  /// aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSli>? windowsBasedSli;

  /// Creates a new [SloArgs].
  /// [basicSli] Basic Service-Level Indicator (SLI) on a well-known service type.
  /// [calendarPeriod] A calendar period, semantically "since the start of the current
  /// [displayName] Name used for UI elements listing this SLO.
  /// [goal] The fraction of service that must be good in order for this objective
  /// [project] The ID of the project in which the resource belongs.
  /// [requestBasedSli] A request-based SLI defines a SLI for which atomic units of
  /// [rollingPeriodDays] A rolling time period, semantically "in the past X days".
  /// [service] ID of the service to which this SLO belongs.
  /// [sloId] The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  /// [userLabels] This field is intended to be used for organizing and identifying the AlertPolicy
  /// [windowsBasedSli] A windows-based SLI defines the criteria for time windows.
  const SloArgs({
    this.basicSli,
    this.calendarPeriod,
    this.displayName,
    required this.goal,
    this.project,
    this.requestBasedSli,
    this.rollingPeriodDays,
    required this.service,
    this.sloId,
    this.userLabels,
    this.windowsBasedSli,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSli': ?pulumi.Input.mapOptionalInputValue<SloBasicSli, Map<String, dynamic>>(basicSli, (value) => value.toMap()),
      'calendarPeriod': ?calendarPeriod,
      'displayName': ?displayName,
      'goal': goal,
      'project': ?project,
      'requestBasedSli': ?pulumi.Input.mapOptionalInputValue<SloRequestBasedSli, Map<String, dynamic>>(requestBasedSli, (value) => value.toMap()),
      'rollingPeriodDays': ?rollingPeriodDays,
      'service': service,
      'sloId': ?sloId,
      'userLabels': ?userLabels,
      'windowsBasedSli': ?pulumi.Input.mapOptionalInputValue<SloWindowsBasedSli, Map<String, dynamic>>(windowsBasedSli, (value) => value.toMap()),
    };
  }

  factory SloArgs.fromMap(Map<String, dynamic> map) {
    return SloArgs(
      basicSli: (() { final guardedValue = map['basicSli']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloBasicSli.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      calendarPeriod: (() { final guardedValue = map['calendarPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goal: pulumi.Input.fromValue(map['goal'] as double),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBasedSli: (() { final guardedValue = map['requestBasedSli']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloRequestBasedSli.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rollingPeriodDays: (() { final guardedValue = map['rollingPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
      sloId: (() { final guardedValue = map['sloId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      windowsBasedSli: (() { final guardedValue = map['windowsBasedSli']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloWindowsBasedSli.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

