// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
/// The set of arguments for VolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
class VolumeQuotaRuleArgs {
  /// Description for the quota rule.
  final pulumi.Input<String>? description;
  /// The maximum allowed capacity in MiB.
  final pulumi.Input<int> diskLimitMib;
  /// Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  final pulumi.Input<String>? location;
  /// The resource name of the quotaRule.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The quota rule applies to the specified user or group.
  /// Valid targets for volumes with NFS protocol enabled:
  /// - UNIX UID for individual user quota
  /// - UNIX GID for individual group quota
  /// Valid targets for volumes with SMB protocol enabled:
  /// - Windows SID for individual user quota
  /// Leave empty for default quotas
  final pulumi.Input<String>? target;
  /// Types of Quota Rule.
  /// Possible values are: `INDIVIDUAL_USER_QUOTA`, `INDIVIDUAL_GROUP_QUOTA`, `DEFAULT_USER_QUOTA`, `DEFAULT_GROUP_QUOTA`.
  final pulumi.Input<String> type;
  /// Name of the volume to create the quotaRule in.
  final pulumi.Input<String> volumeName;

  /// Creates a new [VolumeQuotaRuleArgs].
  /// [description] Description for the quota rule.
  /// [diskLimitMib] The maximum allowed capacity in MiB.
  /// [labels] Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  /// [name] The resource name of the quotaRule.
  /// [project] The ID of the project in which the resource belongs.
  /// [target] The quota rule applies to the specified user or group.
  /// [type] Types of Quota Rule.
  /// [volumeName] Name of the volume to create the quotaRule in.
  VolumeQuotaRuleArgs({
    this.description,
    required this.diskLimitMib,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.target,
    required this.type,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskLimitMib': diskLimitMib,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'target': ?target,
      'type': type,
      'volumeName': volumeName,
    };
  }

  factory VolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskLimitMib: pulumi.Input.fromValue(map['diskLimitMib'] as int),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}

