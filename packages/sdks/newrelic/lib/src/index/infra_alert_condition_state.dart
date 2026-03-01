// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'infra_alert_condition_critical.dart';
import 'infra_alert_condition_warning.dart';

/// Input properties used for looking up and filtering InfraAlertCondition resources.
class InfraAlertConditionState {
  /// The operator used to evaluate the threshold value.  Valid values are `above`, `below`, and `equal`.  Supported by the `infra_metric` and `infra_process_running` condition types.
  final pulumi.Input<String>? comparison;
  /// The timestamp the alert condition was created.
  final pulumi.Input<int>? createdAt;
  /// Identifies the threshold parameters for opening a critical alert incident. See Thresholds below for details.
  final pulumi.Input<InfraAlertConditionCritical>? critical;
  /// The description of the Infrastructure alert condition.
  final pulumi.Input<String>? description;
  /// Whether the condition is turned on or off.  Valid values are `true` and `false`.  Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The unique entity identifier of the condition in New Relic.
  final pulumi.Input<String>? entityGuid;
  /// The metric event; for example, `SystemSample` or `StorageSample`.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? event;
  /// For alerts on integrations, use this instead of `event`.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? integrationProvider;
  /// The Infrastructure alert condition's name.
  final pulumi.Input<String>? name;
  /// The ID of the alert policy where this condition should be used.
  final pulumi.Input<String>? policyId;
  /// Any filters applied to processes; for example: `commandName = 'java'`.  Required by the `infra_process_running` condition type.
  final pulumi.Input<String>? processWhere;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// The attribute name to identify the metric being targeted; for example, `cpuPercent`, `diskFreePercent`, or `memoryResidentSizeBytes`.  The underlying API will automatically populate this value for Infrastructure integrations (for example `diskFreePercent`), so make sure to explicitly include this value to avoid diff issues.  Supported by the `infra_metric` condition type.
  final pulumi.Input<String>? select;
  /// The type of Infrastructure alert condition.  Valid values are  `infra_process_running`, `infra_metric`, and `infra_host_not_reporting`.
  final pulumi.Input<String>? type;
  /// The timestamp the alert condition was last updated.
  final pulumi.Input<int>? updatedAt;
  /// Determines how much time will pass (in hours) before an incident is automatically closed. Valid values are `1 2 4 8 12 24 48 72`. Defaults to 24. If `0` is provided, default of `24` is used and will have configuration drift during the apply phase until a valid value is provided.
  ///
  /// ```
  /// Warning: This resource will use the account ID linked to your API key. At the moment it is not possible to dynamically set the account ID.
  /// ```
  final pulumi.Input<int>? violationCloseTimer;
  /// Identifies the threshold parameters for opening a warning alert incident. See Thresholds below for details.
  final pulumi.Input<InfraAlertConditionWarning>? warning;
  /// If applicable, this identifies any Infrastructure host filters used; for example: `hostname LIKE '%cassandra%'`.
  final pulumi.Input<String>? where;

  /// Creates a new [InfraAlertConditionState].
  /// [comparison] The operator used to evaluate the threshold value.  Valid values are `above`, `below`, and `equal`.  Supported by the `infra_metric` and `infra_process_running` condition types.
  /// [createdAt] The timestamp the alert condition was created.
  /// [critical] Identifies the threshold parameters for opening a critical alert incident. See Thresholds below for details.
  /// [description] The description of the Infrastructure alert condition.
  /// [enabled] Whether the condition is turned on or off.  Valid values are `true` and `false`.  Defaults to `true`.
  /// [entityGuid] The unique entity identifier of the condition in New Relic.
  /// [event] The metric event; for example, `SystemSample` or `StorageSample`.  Supported by the `infra_metric` condition type.
  /// [integrationProvider] For alerts on integrations, use this instead of `event`.  Supported by the `infra_metric` condition type.
  /// [name] The Infrastructure alert condition's name.
  /// [policyId] The ID of the alert policy where this condition should be used.
  /// [processWhere] Any filters applied to processes; for example: `commandName = 'java'`.  Required by the `infra_process_running` condition type.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [select] The attribute name to identify the metric being targeted; for example, `cpuPercent`, `diskFreePercent`, or `memoryResidentSizeBytes`.  The underlying API will automatically populate this value for Infrastructure integrations (for example `diskFreePercent`), so make sure to explicitly include this value to avoid diff issues.  Supported by the `infra_metric` condition type.
  /// [type] The type of Infrastructure alert condition.  Valid values are  `infra_process_running`, `infra_metric`, and `infra_host_not_reporting`.
  /// [updatedAt] The timestamp the alert condition was last updated.
  /// [violationCloseTimer] Determines how much time will pass (in hours) before an incident is automatically closed. Valid values are `1 2 4 8 12 24 48 72`. Defaults to 24. If `0` is provided, default of `24` is used and will have configuration drift during the apply phase until a valid value is provided.
  /// [warning] Identifies the threshold parameters for opening a warning alert incident. See Thresholds below for details.
  /// [where] If applicable, this identifies any Infrastructure host filters used; for example: `hostname LIKE '%cassandra%'`.
  InfraAlertConditionState({
    pulumi.Output<String>? comparison,
    pulumi.Output<int>? createdAt,
    pulumi.Output<InfraAlertConditionCritical>? critical,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? entityGuid,
    pulumi.Output<String>? event,
    pulumi.Output<String>? integrationProvider,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? processWhere,
    pulumi.Output<String>? runbookUrl,
    pulumi.Output<String>? select,
    pulumi.Output<String>? type,
    pulumi.Output<int>? updatedAt,
    pulumi.Output<int>? violationCloseTimer,
    pulumi.Output<InfraAlertConditionWarning>? warning,
    pulumi.Output<String>? where,
  }) :
      comparison = pulumi.Input.asOptionalInput<String>(comparison),
      createdAt = pulumi.Input.asOptionalInput<int>(createdAt),
      critical = pulumi.Input.asOptionalInput<InfraAlertConditionCritical>(critical),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      entityGuid = pulumi.Input.asOptionalInput<String>(entityGuid),
      event = pulumi.Input.asOptionalInput<String>(event),
      integrationProvider = pulumi.Input.asOptionalInput<String>(integrationProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      processWhere = pulumi.Input.asOptionalInput<String>(processWhere),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      select = pulumi.Input.asOptionalInput<String>(select),
      type = pulumi.Input.asOptionalInput<String>(type),
      updatedAt = pulumi.Input.asOptionalInput<int>(updatedAt),
      violationCloseTimer = pulumi.Input.asOptionalInput<int>(violationCloseTimer),
      warning = pulumi.Input.asOptionalInput<InfraAlertConditionWarning>(warning),
      where = pulumi.Input.asOptionalInput<String>(where);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': ?comparison,
      'createdAt': ?createdAt,
      'critical': ?pulumi.Input.mapOptionalInputValue<InfraAlertConditionCritical, Map<String, dynamic>>(critical, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'entityGuid': ?entityGuid,
      'event': ?event,
      'integrationProvider': ?integrationProvider,
      'name': ?name,
      'policyId': ?policyId,
      'processWhere': ?processWhere,
      'runbookUrl': ?runbookUrl,
      'select': ?select,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'violationCloseTimer': ?violationCloseTimer,
      'warning': ?pulumi.Input.mapOptionalInputValue<InfraAlertConditionWarning, Map<String, dynamic>>(warning, (value) => value.toMap()),
      'where': ?where,
    };
  }

  factory InfraAlertConditionState.fromMap(Map<String, dynamic> map) {
    return InfraAlertConditionState(
      comparison: map['comparison'] == null ? null : pulumi.Output.create<String>(map['comparison'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<int>(map['createdAt'] as int),
      critical: map['critical'] == null ? null : pulumi.Output.create<InfraAlertConditionCritical>(InfraAlertConditionCritical.fromMap((map['critical'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      entityGuid: map['entityGuid'] == null ? null : pulumi.Output.create<String>(map['entityGuid'] as String),
      event: map['event'] == null ? null : pulumi.Output.create<String>(map['event'] as String),
      integrationProvider: map['integrationProvider'] == null ? null : pulumi.Output.create<String>(map['integrationProvider'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      processWhere: map['processWhere'] == null ? null : pulumi.Output.create<String>(map['processWhere'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
      select: map['select'] == null ? null : pulumi.Output.create<String>(map['select'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<int>(map['updatedAt'] as int),
      violationCloseTimer: map['violationCloseTimer'] == null ? null : pulumi.Output.create<int>(map['violationCloseTimer'] as int),
      warning: map['warning'] == null ? null : pulumi.Output.create<InfraAlertConditionWarning>(InfraAlertConditionWarning.fromMap((map['warning'] as Map).cast<String, dynamic>())),
      where: map['where'] == null ? null : pulumi.Output.create<String>(map['where'] as String),
    );
  }
}

