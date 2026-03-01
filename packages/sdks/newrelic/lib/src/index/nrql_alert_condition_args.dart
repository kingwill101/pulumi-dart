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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? aggregationDelay,
    pulumi.Output<String>? aggregationMethod,
    pulumi.Output<String>? aggregationTimer,
    pulumi.Output<int>? aggregationWindow,
    pulumi.Output<String>? baselineDirection,
    pulumi.Output<bool>? closeViolationsOnExpiration,
    pulumi.Output<NrqlAlertConditionCritical>? critical,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? evaluationDelay,
    pulumi.Output<int>? expirationDuration,
    pulumi.Output<String>? fillOption,
    pulumi.Output<double>? fillValue,
    pulumi.Output<bool>? ignoreOnExpectedTermination,
    pulumi.Output<String>? name,
    required pulumi.Output<NrqlAlertConditionNrql> nrql,
    pulumi.Output<bool>? openViolationOnExpiration,
    pulumi.Output<NrqlAlertConditionOutlierConfiguration>? outlierConfiguration,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? runbookUrl,
    pulumi.Output<String>? signalSeasonality,
    pulumi.Output<int>? slideBy,
    pulumi.Output<String>? targetEntity,
    pulumi.Output<List<NrqlAlertConditionTerm>>? terms,
    pulumi.Output<String>? titleTemplate,
    pulumi.Output<String>? type,
    pulumi.Output<String>? violationTimeLimit,
    pulumi.Output<int>? violationTimeLimitSeconds,
    pulumi.Output<NrqlAlertConditionWarning>? warning,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      aggregationDelay = pulumi.Input.asOptionalInput<String>(aggregationDelay),
      aggregationMethod = pulumi.Input.asOptionalInput<String>(aggregationMethod),
      aggregationTimer = pulumi.Input.asOptionalInput<String>(aggregationTimer),
      aggregationWindow = pulumi.Input.asOptionalInput<int>(aggregationWindow),
      baselineDirection = pulumi.Input.asOptionalInput<String>(baselineDirection),
      closeViolationsOnExpiration = pulumi.Input.asOptionalInput<bool>(closeViolationsOnExpiration),
      critical = pulumi.Input.asOptionalInput<NrqlAlertConditionCritical>(critical),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      evaluationDelay = pulumi.Input.asOptionalInput<int>(evaluationDelay),
      expirationDuration = pulumi.Input.asOptionalInput<int>(expirationDuration),
      fillOption = pulumi.Input.asOptionalInput<String>(fillOption),
      fillValue = pulumi.Input.asOptionalInput<double>(fillValue),
      ignoreOnExpectedTermination = pulumi.Input.asOptionalInput<bool>(ignoreOnExpectedTermination),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asInput<NrqlAlertConditionNrql>(nrql),
      openViolationOnExpiration = pulumi.Input.asOptionalInput<bool>(openViolationOnExpiration),
      outlierConfiguration = pulumi.Input.asOptionalInput<NrqlAlertConditionOutlierConfiguration>(outlierConfiguration),
      policyId = pulumi.Input.asInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      signalSeasonality = pulumi.Input.asOptionalInput<String>(signalSeasonality),
      slideBy = pulumi.Input.asOptionalInput<int>(slideBy),
      targetEntity = pulumi.Input.asOptionalInput<String>(targetEntity),
      terms = pulumi.Input.asOptionalInput<List<NrqlAlertConditionTerm>>(terms),
      titleTemplate = pulumi.Input.asOptionalInput<String>(titleTemplate),
      type = pulumi.Input.asOptionalInput<String>(type),
      violationTimeLimit = pulumi.Input.asOptionalInput<String>(violationTimeLimit),
      violationTimeLimitSeconds = pulumi.Input.asOptionalInput<int>(violationTimeLimitSeconds),
      warning = pulumi.Input.asOptionalInput<NrqlAlertConditionWarning>(warning);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      aggregationDelay: map['aggregationDelay'] == null ? null : pulumi.Output.create<String>(map['aggregationDelay'] as String),
      aggregationMethod: map['aggregationMethod'] == null ? null : pulumi.Output.create<String>(map['aggregationMethod'] as String),
      aggregationTimer: map['aggregationTimer'] == null ? null : pulumi.Output.create<String>(map['aggregationTimer'] as String),
      aggregationWindow: map['aggregationWindow'] == null ? null : pulumi.Output.create<int>(map['aggregationWindow'] as int),
      baselineDirection: map['baselineDirection'] == null ? null : pulumi.Output.create<String>(map['baselineDirection'] as String),
      closeViolationsOnExpiration: map['closeViolationsOnExpiration'] == null ? null : pulumi.Output.create<bool>(map['closeViolationsOnExpiration'] as bool),
      critical: map['critical'] == null ? null : pulumi.Output.create<NrqlAlertConditionCritical>(NrqlAlertConditionCritical.fromMap((map['critical'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      evaluationDelay: map['evaluationDelay'] == null ? null : pulumi.Output.create<int>(map['evaluationDelay'] as int),
      expirationDuration: map['expirationDuration'] == null ? null : pulumi.Output.create<int>(map['expirationDuration'] as int),
      fillOption: map['fillOption'] == null ? null : pulumi.Output.create<String>(map['fillOption'] as String),
      fillValue: map['fillValue'] == null ? null : pulumi.Output.create<double>(map['fillValue'] as double),
      ignoreOnExpectedTermination: map['ignoreOnExpectedTermination'] == null ? null : pulumi.Output.create<bool>(map['ignoreOnExpectedTermination'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nrql: pulumi.Output.create<NrqlAlertConditionNrql>(NrqlAlertConditionNrql.fromMap((map['nrql'] as Map).cast<String, dynamic>())),
      openViolationOnExpiration: map['openViolationOnExpiration'] == null ? null : pulumi.Output.create<bool>(map['openViolationOnExpiration'] as bool),
      outlierConfiguration: map['outlierConfiguration'] == null ? null : pulumi.Output.create<NrqlAlertConditionOutlierConfiguration>(NrqlAlertConditionOutlierConfiguration.fromMap((map['outlierConfiguration'] as Map).cast<String, dynamic>())),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
      signalSeasonality: map['signalSeasonality'] == null ? null : pulumi.Output.create<String>(map['signalSeasonality'] as String),
      slideBy: map['slideBy'] == null ? null : pulumi.Output.create<int>(map['slideBy'] as int),
      targetEntity: map['targetEntity'] == null ? null : pulumi.Output.create<String>(map['targetEntity'] as String),
      terms: map['terms'] == null ? null : pulumi.Output.create<List<NrqlAlertConditionTerm>>(pulumi.Input.decodeList<NrqlAlertConditionTerm>(map['terms'], (value) => NrqlAlertConditionTerm.fromMap((value as Map).cast<String, dynamic>()))),
      titleTemplate: map['titleTemplate'] == null ? null : pulumi.Output.create<String>(map['titleTemplate'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      violationTimeLimit: map['violationTimeLimit'] == null ? null : pulumi.Output.create<String>(map['violationTimeLimit'] as String),
      violationTimeLimitSeconds: map['violationTimeLimitSeconds'] == null ? null : pulumi.Output.create<int>(map['violationTimeLimitSeconds'] as int),
      warning: map['warning'] == null ? null : pulumi.Output.create<NrqlAlertConditionWarning>(NrqlAlertConditionWarning.fromMap((map['warning'] as Map).cast<String, dynamic>())),
    );
  }
}

