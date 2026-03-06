// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_alert_condition_critical.dart';
import 'nrql_alert_condition_nrql.dart';
import 'nrql_alert_condition_outlier_configuration.dart';
import 'nrql_alert_condition_term.dart';
import 'nrql_alert_condition_warning.dart';

/// Input properties used for looking up and filtering NrqlAlertCondition resources.
class NrqlAlertConditionState {
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
  /// The unique entity identifier of the NRQL Condition in New Relic.
  final pulumi.Input<String>? entityGuid;
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
  final pulumi.Input<NrqlAlertConditionNrql>? nrql;
  /// Whether to create a new incident to capture that the signal expired.
  final pulumi.Input<bool>? openViolationOnExpiration;
  /// **BETA PREVIEW:** The configuration block for `outlier` NRQL alert conditions. See Outlier Configuration below for details.
  final pulumi.Input<NrqlAlertConditionOutlierConfiguration>? outlierConfiguration;
  /// The ID of the policy where this condition should be used.
  final pulumi.Input<String>? policyId;
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
  /// &lt;small&gt;\***Note**: **BETA PREVIEW: the `outlier` field is in limited release and only enabled for preview on a per-account basis.**&lt;/small&gt;
  final pulumi.Input<String>? type;
  /// **DEPRECATED:** Use `violation_time_limit_seconds` instead. Sets a time limit, in hours, that will automatically force-close a long-lasting incident after the time limit you select. Possible values are `ONE_HOUR`, `TWO_HOURS`, `FOUR_HOURS`, `EIGHT_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`, `THIRTY_DAYS` (case insensitive).&lt;br&gt;
  /// &lt;small&gt;\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.&lt;/small&gt;
  final pulumi.Input<String>? violationTimeLimit;
  /// Sets a time limit, in seconds, that will automatically force-close a long-lasting incident after the time limit you select. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days) (inclusive). &lt;br&gt;
  /// &lt;small&gt;\***Note**: One of `violation_time_limit` _or_ `violation_time_limit_seconds` must be set, but not both.&lt;/small&gt;
  final pulumi.Input<int>? violationTimeLimitSeconds;
  /// A list containing the `warning` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  final pulumi.Input<NrqlAlertConditionWarning>? warning;

  /// Creates a new [NrqlAlertConditionState].
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
  /// [entityGuid] The unique entity identifier of the NRQL Condition in New Relic.
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
  /// [violationTimeLimit] **DEPRECATED:** Use `violation_time_limit_seconds` instead. Sets a time limit, in hours, that will automatically force-close a long-lasting incident after the time limit you select. Possible values are `ONE_HOUR`, `TWO_HOURS`, `FOUR_HOURS`, `EIGHT_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`, `THIRTY_DAYS` (case insensitive).&lt;br&gt;
  /// [violationTimeLimitSeconds] Sets a time limit, in seconds, that will automatically force-close a long-lasting incident after the time limit you select. The value must be between 300 seconds (5 minutes) to 2592000 seconds (30 days) (inclusive). &lt;br&gt;
  /// [warning] A list containing the `warning` threshold values. At least one `critical` or `warning` threshold must be defined. See Terms below for details.
  const NrqlAlertConditionState({
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
    this.entityGuid,
    this.evaluationDelay,
    this.expirationDuration,
    this.fillOption,
    this.fillValue,
    this.ignoreOnExpectedTermination,
    this.name,
    this.nrql,
    this.openViolationOnExpiration,
    this.outlierConfiguration,
    this.policyId,
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
      'entityGuid': ?entityGuid,
      'evaluationDelay': ?evaluationDelay,
      'expirationDuration': ?expirationDuration,
      'fillOption': ?fillOption,
      'fillValue': ?fillValue,
      'ignoreOnExpectedTermination': ?ignoreOnExpectedTermination,
      'name': ?name,
      'nrql': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionNrql, Map<String, dynamic>>(nrql, (value) => value.toMap()),
      'openViolationOnExpiration': ?openViolationOnExpiration,
      'outlierConfiguration': ?pulumi.Input.mapOptionalInputValue<NrqlAlertConditionOutlierConfiguration, Map<String, dynamic>>(outlierConfiguration, (value) => value.toMap()),
      'policyId': ?policyId,
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

  factory NrqlAlertConditionState.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregationDelay: (() { final guardedValue = map['aggregationDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregationMethod: (() { final guardedValue = map['aggregationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregationTimer: (() { final guardedValue = map['aggregationTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregationWindow: (() { final guardedValue = map['aggregationWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      baselineDirection: (() { final guardedValue = map['baselineDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      closeViolationsOnExpiration: (() { final guardedValue = map['closeViolationsOnExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NrqlAlertConditionCritical.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityGuid: (() { final guardedValue = map['entityGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationDelay: (() { final guardedValue = map['evaluationDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expirationDuration: (() { final guardedValue = map['expirationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fillOption: (() { final guardedValue = map['fillOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fillValue: (() { final guardedValue = map['fillValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ignoreOnExpectedTermination: (() { final guardedValue = map['ignoreOnExpectedTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nrql: (() { final guardedValue = map['nrql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NrqlAlertConditionNrql.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openViolationOnExpiration: (() { final guardedValue = map['openViolationOnExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outlierConfiguration: (() { final guardedValue = map['outlierConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NrqlAlertConditionOutlierConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookUrl: (() { final guardedValue = map['runbookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalSeasonality: (() { final guardedValue = map['signalSeasonality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slideBy: (() { final guardedValue = map['slideBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetEntity: (() { final guardedValue = map['targetEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NrqlAlertConditionTerm>(guardedValue, (value) => NrqlAlertConditionTerm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      titleTemplate: (() { final guardedValue = map['titleTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      violationTimeLimit: (() { final guardedValue = map['violationTimeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      violationTimeLimitSeconds: (() { final guardedValue = map['violationTimeLimitSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warning: (() { final guardedValue = map['warning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NrqlAlertConditionWarning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

