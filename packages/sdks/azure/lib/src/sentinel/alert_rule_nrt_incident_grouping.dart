// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleNrtIncidentGrouping {
  /// A list of alert details to group by, only when the `entity_matching_method` is `Selected`. Possible values are `DisplayName` and `Severity`.
  final pulumi.Input<List<String>>? byAlertDetails;
  /// A list of custom details keys to group by, only when the `entity_matching_method` is `Selected`. Only keys defined in the `custom_details` may be used.
  final pulumi.Input<List<String>>? byCustomDetails;
  /// A list of entity types to group by, only when the `entity_matching_method` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final pulumi.Input<List<String>>? byEntities;
  /// Enable grouping incidents created from alerts triggered by this Sentinel NRT Alert Rule. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  final pulumi.Input<String>? entityMatchingMethod;
  /// Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  final pulumi.Input<String>? lookbackDuration;
  /// Whether to re-open closed matching incidents? Defaults to `false`.
  final pulumi.Input<bool>? reopenClosedIncidents;

  /// Creates a new [AlertRuleNrtIncidentGrouping].
  /// [byAlertDetails] A list of alert details to group by, only when the `entity_matching_method` is `Selected`. Possible values are `DisplayName` and `Severity`.
  /// [byCustomDetails] A list of custom details keys to group by, only when the `entity_matching_method` is `Selected`. Only keys defined in the `custom_details` may be used.
  /// [byEntities] A list of entity types to group by, only when the `entity_matching_method` is `Selected`. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [enabled] Enable grouping incidents created from alerts triggered by this Sentinel NRT Alert Rule. Defaults to `true`.
  /// [entityMatchingMethod] The method used to group incidents. Possible values are `AnyAlert`, `Selected` and `AllEntities`. Defaults to `AnyAlert`.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to `PT5M`.
  /// [reopenClosedIncidents] Whether to re-open closed matching incidents? Defaults to `false`.
  AlertRuleNrtIncidentGrouping({
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

  factory AlertRuleNrtIncidentGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtIncidentGrouping(
      byAlertDetails: map['byAlertDetails'] == null ? null : ((map['byAlertDetails']! as List).cast<String>()).input(),
      byCustomDetails: map['byCustomDetails'] == null ? null : ((map['byCustomDetails']! as List).cast<String>()).input(),
      byEntities: map['byEntities'] == null ? null : ((map['byEntities']! as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      entityMatchingMethod: map['entityMatchingMethod'] == null ? null : (map['entityMatchingMethod']! as String).input(),
      lookbackDuration: map['lookbackDuration'] == null ? null : (map['lookbackDuration']! as String).input(),
      reopenClosedIncidents: map['reopenClosedIncidents'] == null ? null : (map['reopenClosedIncidents']! as bool).input(),
    );
  }
}

