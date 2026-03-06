// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_entity_mapping_field_mapping.dart';

class AlertRuleNrtEntityMapping {
  /// The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final pulumi.Input<String> entityType;
  /// A list of `field_mapping` blocks as defined below.
  final pulumi.Input<List<AlertRuleNrtEntityMappingFieldMapping>> fieldMappings;

  /// Creates a new [AlertRuleNrtEntityMapping].
  /// [entityType] The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [fieldMappings] A list of `field_mapping` blocks as defined below.
  const AlertRuleNrtEntityMapping({
    required this.entityType,
    required this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'fieldMappings': pulumi.Input.mapInputValue<List<AlertRuleNrtEntityMappingFieldMapping>, List<Map<String, dynamic>>>(fieldMappings, (value) => pulumi.Input.encodeList<AlertRuleNrtEntityMappingFieldMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleNrtEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtEntityMapping(
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      fieldMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleNrtEntityMappingFieldMapping>(map['fieldMappings']!, (value) => AlertRuleNrtEntityMappingFieldMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

