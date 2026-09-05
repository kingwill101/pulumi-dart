// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleScheduledIncidentGrouping {
  /// A list of alert details to group by, only when the `entityMatchingMethod` is `Selected`. Possible values are `DisplayName` and `Severity`.
  final pulumi.Input<List<String>?>? byAlertDetails;
  /// A list of custom details keys to group by, only when the `entityMatchingMethod` is `Selected`. Only keys defined in the `customDetails` may be used.
  final pulumi.Input<List<String>?>? byCustomDetails;
  /// A list of entity types to group by, only when the `entityMatchingMethod` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final pulumi.Input<List<String>?>? byEntities;
  /// Enable grouping incidents created from alerts triggered by this Sentinel Scheduled Alert Rule. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  final pulumi.Input<String?>? entityMatchingMethod;
  /// Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  final pulumi.Input<String?>? lookbackDuration;
  /// Whether to re-open closed matching incidents? Defaults to `false`.
  final pulumi.Input<bool?>? reopenClosedIncidents;

  /// Creates a new [AlertRuleScheduledIncidentGrouping].
  /// [byAlertDetails] A list of alert details to group by, only when the `entityMatchingMethod` is `Selected`. Possible values are `DisplayName` and `Severity`.
  /// [byCustomDetails] A list of custom details keys to group by, only when the `entityMatchingMethod` is `Selected`. Only keys defined in the `customDetails` may be used.
  /// [byEntities] A list of entity types to group by, only when the `entityMatchingMethod` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [enabled] Enable grouping incidents created from alerts triggered by this Sentinel Scheduled Alert Rule. Defaults to `true`.
  /// [entityMatchingMethod] The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  /// [reopenClosedIncidents] Whether to re-open closed matching incidents? Defaults to `false`.
  const AlertRuleScheduledIncidentGrouping({
    this.byAlertDetails,
    this.byCustomDetails,
    this.byEntities,
    this.enabled,
    this.entityMatchingMethod,
    this.lookbackDuration,
    this.reopenClosedIncidents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byAlertDetails': ?byAlertDetails,
      'byCustomDetails': ?byCustomDetails,
      'byEntities': ?byEntities,
      'enabled': ?enabled,
      'entityMatchingMethod': ?entityMatchingMethod,
      'lookbackDuration': ?lookbackDuration,
      'reopenClosedIncidents': ?reopenClosedIncidents,
    };
  }

  factory AlertRuleScheduledIncidentGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledIncidentGrouping(
      byAlertDetails: (() { final guardedValue = map['byAlertDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      byCustomDetails: (() { final guardedValue = map['byCustomDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      byEntities: (() { final guardedValue = map['byEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entityMatchingMethod: (() { final guardedValue = map['entityMatchingMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookbackDuration: (() { final guardedValue = map['lookbackDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reopenClosedIncidents: (() { final guardedValue = map['reopenClosedIncidents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
