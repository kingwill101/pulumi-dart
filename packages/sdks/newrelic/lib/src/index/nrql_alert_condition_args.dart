// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_alert_condition_critical.dart';
import 'nrql_alert_condition_nrql.dart';
import 'nrql_alert_condition_outlier_configuration.dart';
import 'nrql_alert_condition_term.dart';
import 'nrql_alert_condition_warning.dart';

/// {@template pulumi_index_nrql_alert_condition_nrql_alert_condition_args_doc}
/// The set of arguments for NrqlAlertCondition.
/// {@endtemplate}
/// {@macro pulumi_index_nrql_alert_condition_nrql_alert_condition_args_doc}
class NrqlAlertConditionArgs {
  /// The New Relic account ID of the account you wish to create the condition. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// How long we wait for data that belongs in each aggregation window. Depending on your data, a longer delay may increase accuracy but delay notifications. Use `aggregation_delay` with the `event_flow` and `cadence` methods. The maximum delay is 1200 seconds (20 minutes) when using `event_flow` and 3600 seconds (60 minutes) when using `cadence`. In both cases, the minimum delay is 0 seconds and the default is 120 seconds. `aggregation_delay` cannot be set with `nrql.evaluation_offset`.
  final pulumi.Input<String>? aggregationDelay;
  /// Determines when we consider an aggregation window to be complete so that we can evaluate the signal for incidents. Possible values are `cadence`, `event_flow` or `event_timer`. Default is `event_flow`. `aggregation_method` cannot be set with `nrql.evaluation_offset`.
  final pulumi.Input<String>? aggregationMethod;
  /// How long we wait after each data point arrives to make sure we've processed the whole batch. Use `aggregation_timer` with the `event_timer` method. The timer value can range from 0 seconds to 1200 seconds (20 minutes); the default is 60 seconds. `aggregation_timer` cannot be set with `nrql.evaluation_offset`.
  final pulumi.Input<String>? aggregationTimer;
  /// The duration of the time window used to evaluate the NRQL query, in seconds. The value must be at least 30 seconds, and no more than 21600 seconds (6 hours). Default is 60 seconds.
  final pulumi.Input<int>? aggregationWindow;
  /// The baseline direction of a _baseline_ NRQL alert condition. Valid values are: `lower_only`, `upper_and_lower`, `upper_only` (case insensitive).
  final pulumi.Input<String>? baselineDirection;
  /// Whether to close all open incidents when the signal expires.
  final pulumi.Input<bool>? closeViolationsOnExpiration;
  /// A list containing the `critical` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  final pulumi.Input<NrqlAlertConditionCritical>? critical;
  /// The description of the NRQL alert condition.
  final pulumi.Input<String>? description;
  /// Whether to enable the alert condition. Valid values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// How long we wait until the signal starts evaluating. The maximum delay is 7200 seconds (120 minutes).
  final pulumi.Input<int>? evaluationDelay;
  /// The amount of time (in seconds) to wait before considering the signal expired. The value must be at least 30 seconds, and no more than 172800 seconds (48 hours).
  final pulumi.Input<int>? expirationDuration;
  /// Which strategy to use when filling gaps in the signal. Possible values are `none`, `last_value` or `static`. If `static`, the `fill_value` field will be used for filling gaps in the signal.
  final pulumi.Input<String>? fillOption;
  /// This value will be used for filling gaps in the signal.
  final pulumi.Input<double>? fillValue;
  /// Whether an alert condition should ignore expected termination of a signal when considering whether to create a loss of signal incident. Defaults to false.
  final pulumi.Input<bool>? ignoreOnExpectedTermination;
  /// The title of the condition.
  final pulumi.Input<String>? name;
  /// A NRQL query. See NRQL below for details.
  final pulumi.Input<NrqlAlertConditionNrql> nrql;
  /// Whether to create a new incident to capture that the signal expired.
  final pulumi.Input<bool>? openViolationOnExpiration;
  /// **BETA PREVIEW:** The configuration block for `outlier` NRQL alert conditions. See Outlier Configuration below for details.
  final pulumi.Input<NrqlAlertConditionOutlierConfiguration>? outlierConfiguration;
  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String> policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// Seasonality under which a condition's signal(s) are evaluated. Only available for baseline conditions. Valid values are: `NEW_RELIC_CALCULATION`, `HOURLY`, `DAILY`, `WEEKLY`, or `NONE`. To have New Relic calculate seasonality automatically, set to `NEW_RELIC_CALCULATION`. To turn off seasonality completely, set to `NONE`.
  final pulumi.Input<String>? signalSeasonality;
  /// Gathers data in overlapping time windows to smooth the chart line, making it easier to spot trends. The `slide_by` value is specified in seconds and must be smaller than and a factor of the `aggregation_window`.
  final pulumi.Input<int>? slideBy;
  /// BETA PREVIEW: The GUID of the entity explicitly targeted by the condition. Issues triggered by this condition will affect the health status of this entity instead of having the affected entity detected automatically. The entity's account ID must be either `account_id` or `nrql.data_account_id`.
  final pulumi.Input<String>? targetEntity;
  /// **DEPRECATED** Use `critical`, and `warning` instead. A list of terms for this condition. See Terms below for details.
  final pulumi.Input<List<NrqlAlertConditionTerm>>? terms;
  /// The custom title to be used when incidents are opened by the condition. Setting this field will override the default title. Must be [Handlebars](https://handlebarsjs.com/) format.
  final pulumi.Input<String>? titleTemplate;
  /// The type of the condition. Valid values are `static`, `baseline`, or `outlier`. Defaults to `static`.
  /// <small>\***Note**: **BETA PREVIEW: the `outlier` field is in limited release and only enabled for preview on a per-account basis.**</small>
  final pulumi.Input<String>? type;
  /// **DEPRECATED:** Use `violation_time_limit_seconds` instead. Sets a time limit, in hours, that will automatically force-close a long-lasting incident after the time limit you select. Possible values are `ONE_HOUR`, `TWO_HOURS`, `FOUR_HOURS`, `EIGHT_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`, `THIRTY_DAYS` (case insensitive).<br>
  /// <small>\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.</small>
  final pulumi.Input<String>? violationTimeLimit;
  /// Sets a time limit, in seconds, that will automatically force-close a long-lasting incident after the time limit you select. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days) (inclusive). <br>
  /// <small>\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.</small>
  final pulumi.Input<int>? violationTimeLimitSeconds;
  /// A list containing the `warning` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  final pulumi.Input<NrqlAlertConditionWarning>? warning;

  /// Creates a new [NrqlAlertConditionArgs].
  /// [accountId] The New Relic account ID of the account you wish to create the condition. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [aggregationDelay] How long we wait for data that belongs in each aggregation window. Depending on your data, a longer delay may increase accuracy but delay notifications. Use `aggregation_delay` with the `event_flow` and `cadence` methods. The maximum delay is 1200 seconds (20 minutes) when using `event_flow` and 3600 seconds (60 minutes) when using `cadence`. In both cases, the minimum delay is 0 seconds and the default is 120 seconds. `aggregation_delay` cannot be set with `nrql.evaluation_offset`.
  /// [aggregationMethod] Determines when we consider an aggregation window to be complete so that we can evaluate the signal for incidents. Possible values are `cadence`, `event_flow` or `event_timer`. Default is `event_flow`. `aggregation_method` cannot be set with `nrql.evaluation_offset`.
  /// [aggregationTimer] How long we wait after each data point arrives to make sure we've processed the whole batch. Use `aggregation_timer` with the `event_timer` method. The timer value can range from 0 seconds to 1200 seconds (20 minutes); the default is 60 seconds. `aggregation_timer` cannot be set with `nrql.evaluation_offset`.
  /// [aggregationWindow] The duration of the time window used to evaluate the NRQL query, in seconds. The value must be at least 30 seconds, and no more than 21600 seconds (6 hours). Default is 60 seconds.
  /// [baselineDirection] The baseline direction of a _baseline_ NRQL alert condition. Valid values are: `lower_only`, `upper_and_lower`, `upper_only` (case insensitive).
  /// [closeViolationsOnExpiration] Whether to close all open incidents when the signal expires.
  /// [critical] A list containing the `critical` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  /// [description] The description of the NRQL alert condition.
  /// [enabled] Whether to enable the alert condition. Valid values are `true` and `false`. Defaults to `true`.
  /// [evaluationDelay] How long we wait until the signal starts evaluating. The maximum delay is 7200 seconds (120 minutes).
  /// [expirationDuration] The amount of time (in seconds) to wait before considering the signal expired. The value must be at least 30 seconds, and no more than 172800 seconds (48 hours).
  /// [fillOption] Which strategy to use when filling gaps in the signal. Possible values are `none`, `last_value` or `static`. If `static`, the `fill_value` field will be used for filling gaps in the signal.
  /// [fillValue] This value will be used for filling gaps in the signal.
  /// [ignoreOnExpectedTermination] Whether an alert condition should ignore expected termination of a signal when considering whether to create a loss of signal incident. Defaults to false.
  /// [name] The title of the condition.
  /// [nrql] A NRQL query. See NRQL below for details.
  /// [openViolationOnExpiration] Whether to create a new incident to capture that the signal expired.
  /// [outlierConfiguration] **BETA PREVIEW:** The configuration block for `outlier` NRQL alert conditions. See Outlier Configuration below for details.
  /// [policyId] The ID of the policy where this condition should be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [signalSeasonality] Seasonality under which a condition's signal(s) are evaluated. Only available for baseline conditions. Valid values are: `NEW_RELIC_CALCULATION`, `HOURLY`, `DAILY`, `WEEKLY`, or `NONE`. To have New Relic calculate seasonality automatically, set to `NEW_RELIC_CALCULATION`. To turn off seasonality completely, set to `NONE`.
  /// [slideBy] Gathers data in overlapping time windows to smooth the chart line, making it easier to spot trends. The `slide_by` value is specified in seconds and must be smaller than and a factor of the `aggregation_window`.
  /// [targetEntity] BETA PREVIEW: The GUID of the entity explicitly targeted by the condition. Issues triggered by this condition will affect the health status of this entity instead of having the affected entity detected automatically. The entity's account ID must be either `account_id` or `nrql.data_account_id`.
  /// [terms] **DEPRECATED** Use `critical`, and `warning` instead. A list of terms for this condition. See Terms below for details.
  /// [titleTemplate] The custom title to be used when incidents are opened by the condition. Setting this field will override the default title. Must be [Handlebars](https://handlebarsjs.com/) format.
  /// [type] The type of the condition. Valid values are `static`, `baseline`, or `outlier`. Defaults to `static`.
  /// [violationTimeLimit] **DEPRECATED:** Use `violation_time_limit_seconds` instead. Sets a time limit, in hours, that will automatically force-close a long-lasting incident after the time limit you select. Possible values are `ONE_HOUR`, `TWO_HOURS`, `FOUR_HOURS`, `EIGHT_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`, `THIRTY_DAYS` (case insensitive).<br>
  /// [violationTimeLimitSeconds] Sets a time limit, in seconds, that will automatically force-close a long-lasting incident after the time limit you select. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days) (inclusive). <br>
  /// [warning] A list containing the `warning` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  NrqlAlertConditionArgs({
    this.accountId,
    this.aggregationDelay,
    this.aggregationMethod,
    this.aggregationTimer,
    this.aggregationWindow,
    this.baselineDirection,
    this.closeViolationsOnExpiration,
    this.critical,
    this.description,
    this.enabled,
    this.evaluationDelay,
    this.expirationDuration,
    this.fillOption,
    this.fillValue,
    this.ignoreOnExpectedTermination,
    this.name,
    required this.nrql,
    this.openViolationOnExpiration,
    this.outlierConfiguration,
    required this.policyId,
    this.runbookUrl,
    this.signalSeasonality,
    this.slideBy,
    this.targetEntity,
    this.terms,
    this.titleTemplate,
    this.type,
    this.violationTimeLimit,
    this.violationTimeLimitSeconds,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aggregationDelay': ?aggregationDelay,
      'aggregationMethod': ?aggregationMethod,
      'aggregationTimer': ?aggregationTimer,
      'aggregationWindow': ?aggregationWindow,
      'baselineDirection': ?baselineDirection,
      'closeViolationsOnExpiration': ?closeViolationsOnExpiration,
      'critical': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'evaluationDelay': ?evaluationDelay,
      'expirationDuration': ?expirationDuration,
      'fillOption': ?fillOption,
      'fillValue': ?fillValue,
      'ignoreOnExpectedTermination': ?ignoreOnExpectedTermination,
      'name': ?name,
      'nrql': pulumi.Input.mapInputValue<NrqlAlertConditionNrql, Map<String, dynamic>>(nrql, (value) => value.toMap()),
      'openViolationOnExpiration': ?openViolationOnExpiration,
      'outlierConfiguration': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionOutlierConfiguration, Map<String, dynamic>>(outlierConfiguration, (value) => value.toMap()),
      'policyId': policyId,
      'runbookUrl': ?runbookUrl,
      'signalSeasonality': ?signalSeasonality,
      'slideBy': ?slideBy,
      'targetEntity': ?targetEntity,
      'terms': ?pulumi.Input.mapOptionalInputValue<List<NrqlAlertConditionTerm>, List<Map<String, dynamic>>>(terms, (value) => pulumi.Input.encodeList<NrqlAlertConditionTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'titleTemplate': ?titleTemplate,
      'type': ?type,
      'violationTimeLimit': ?violationTimeLimit,
      'violationTimeLimitSeconds': ?violationTimeLimitSeconds,
      'warning': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionWarning, Map<String, dynamic>>(warning, (value) => value.toMap()),
    };
  }

  factory NrqlAlertConditionArgs.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      aggregationDelay: map['aggregationDelay'] == null ? null : (map['aggregationDelay']! as String).input(),
      aggregationMethod: map['aggregationMethod'] == null ? null : (map['aggregationMethod']! as String).input(),
      aggregationTimer: map['aggregationTimer'] == null ? null : (map['aggregationTimer']! as String).input(),
      aggregationWindow: map['aggregationWindow'] == null ? null : (map['aggregationWindow']! as int).input(),
      baselineDirection: map['baselineDirection'] == null ? null : (map['baselineDirection']! as String).input(),
      closeViolationsOnExpiration: map['closeViolationsOnExpiration'] == null ? null : (map['closeViolationsOnExpiration']! as bool).input(),
      critical: map['critical'] == null ? null : (NrqlAlertConditionCritical.fromMap((map['critical']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      evaluationDelay: map['evaluationDelay'] == null ? null : (map['evaluationDelay']! as int).input(),
      expirationDuration: map['expirationDuration'] == null ? null : (map['expirationDuration']! as int).input(),
      fillOption: map['fillOption'] == null ? null : (map['fillOption']! as String).input(),
      fillValue: map['fillValue'] == null ? null : (map['fillValue']! as double).input(),
      ignoreOnExpectedTermination: map['ignoreOnExpectedTermination'] == null ? null : (map['ignoreOnExpectedTermination']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nrql: (NrqlAlertConditionNrql.fromMap((map['nrql'] as Map).cast<String, dynamic>())).input(),
      openViolationOnExpiration: map['openViolationOnExpiration'] == null ? null : (map['openViolationOnExpiration']! as bool).input(),
      outlierConfiguration: map['outlierConfiguration'] == null ? null : (NrqlAlertConditionOutlierConfiguration.fromMap((map['outlierConfiguration']! as Map).cast<String, dynamic>())).input(),
      policyId: (map['policyId'] as String).input(),
      runbookUrl: map['runbookUrl'] == null ? null : (map['runbookUrl']! as String).input(),
      signalSeasonality: map['signalSeasonality'] == null ? null : (map['signalSeasonality']! as String).input(),
      slideBy: map['slideBy'] == null ? null : (map['slideBy']! as int).input(),
      targetEntity: map['targetEntity'] == null ? null : (map['targetEntity']! as String).input(),
      terms: map['terms'] == null ? null : (pulumi.Input.decodeList<NrqlAlertConditionTerm>(map['terms']!, (value) => NrqlAlertConditionTerm.fromMap((value as Map).cast<String, dynamic>()))).input(),
      titleTemplate: map['titleTemplate'] == null ? null : (map['titleTemplate']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      violationTimeLimit: map['violationTimeLimit'] == null ? null : (map['violationTimeLimit']! as String).input(),
      violationTimeLimitSeconds: map['violationTimeLimitSeconds'] == null ? null : (map['violationTimeLimitSeconds']! as int).input(),
      warning: map['warning'] == null ? null : (NrqlAlertConditionWarning.fromMap((map['warning']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

