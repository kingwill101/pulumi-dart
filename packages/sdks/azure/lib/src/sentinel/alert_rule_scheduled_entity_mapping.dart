// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_scheduled_entity_mapping_field_mapping.dart';

class AlertRuleScheduledEntityMapping {
  /// The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final pulumi.Input<String> entityType;
  /// A list of `fieldMapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleScheduledEntityMappingFieldMapping>> fieldMappings;

  /// Creates a new [AlertRuleScheduledEntityMapping].
  /// [entityType] The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [fieldMappings] A list of `fieldMapping` blocks as defined below.
  const AlertRuleScheduledEntityMapping({
    required this.entityType,
    required this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'fieldMappings': pulumi.Input.mapInputValue<List<AlertRuleScheduledEntityMappingFieldMapping>, List<Map<String, dynamic>>>(fieldMappings, (value) => pulumi.Input.encodeList<AlertRuleScheduledEntityMappingFieldMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleScheduledEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledEntityMapping(
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      fieldMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleScheduledEntityMappingFieldMapping>(map['fieldMappings']!, (value) => AlertRuleScheduledEntityMappingFieldMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
