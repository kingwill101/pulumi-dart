// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeQuotaRule resources.
class VolumeQuotaRuleState {
  /// Create time of the quota rule. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// Description for the quota rule.
  final pulumi.Input<String>? description;
  /// The maximum allowed capacity in MiB.
  final pulumi.Input<int>? diskLimitMib;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of the quota rule. Possible Values : [STATE_UNSPECIFIED, CREATING, UPDATING, READY, DELETING, ERROR]
  final pulumi.Input<String>? state;
  /// State details of the quota rule
  final pulumi.Input<String>? stateDetails;
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
  final pulumi.Input<String>? type;
  /// Name of the volume to create the quotaRule in.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeQuotaRuleState].
  /// [createTime] Create time of the quota rule. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [description] Description for the quota rule.
  /// [diskLimitMib] The maximum allowed capacity in MiB.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  /// [name] The resource name of the quotaRule.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the quota rule. Possible Values : [STATE_UNSPECIFIED, CREATING, UPDATING, READY, DELETING, ERROR]
  /// [stateDetails] State details of the quota rule
  /// [target] The quota rule applies to the specified user or group.
  /// [type] Types of Quota Rule.
  /// [volumeName] Name of the volume to create the quotaRule in.
  VolumeQuotaRuleState({
    this.createTime,
    this.description,
    this.diskLimitMib,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateDetails,
    this.target,
    this.type,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'diskLimitMib': ?diskLimitMib,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateDetails': ?stateDetails,
      'target': ?target,
      'type': ?type,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeQuotaRuleState.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      diskLimitMib: map['diskLimitMib'] == null ? null : (map['diskLimitMib'] as int).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateDetails: map['stateDetails'] == null ? null : (map['stateDetails'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName'] as String).input(),
    );
  }
}

