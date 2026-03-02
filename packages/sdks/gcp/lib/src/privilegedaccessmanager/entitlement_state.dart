// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_additional_notification_targets.dart';
import 'entitlement_approval_workflow.dart';
import 'entitlement_eligible_user.dart';
import 'entitlement_privileged_access.dart';
import 'entitlement_requester_justification_config.dart';

/// Input properties used for looking up and filtering Entitlement resources.
class EntitlementState {
  /// AdditionalNotificationTargets includes email addresses to be notified.
  /// Structure is documented below.
  final pulumi.Input<EntitlementAdditionalNotificationTargets>? additionalNotificationTargets;
  /// The approvals needed before access will be granted to a requester.
  /// No approvals will be needed if this field is null. Different types of approval workflows that can be used to gate privileged access granting.
  /// Structure is documented below.
  final pulumi.Input<EntitlementApprovalWorkflow>? approvalWorkflow;
  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;
  /// Who can create Grants using Entitlement. This list should contain at most one entry
  /// Structure is documented below.
  final pulumi.Input<List<EntitlementEligibleUser>>? eligibleUsers;
  /// The ID to use for this Entitlement. This will become the last part of the resource name.
  /// This value should be 4-63 characters, and valid characters are "[a-z]", "[0-9]", and "-". The first character should be from [a-z].
  /// This value should be unique among all other Entitlements under the specified `parent`.
  final pulumi.Input<String>? entitlementId;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// The region of the Entitlement resource.
  final pulumi.Input<String>? location;
  /// The maximum amount of time for which access would be granted for a request.
  /// A requester can choose to ask for access for less than this duration but never more.
  /// Format: calculate the time in seconds and concatenate it with 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
  final pulumi.Input<String>? maxRequestDuration;
  /// Output Only. The entitlement's name follows a hierarchical structure, comprising the organization, folder, or project, alongside the region and a unique entitlement ID.
  /// Formats: organizations/{organization-number}/locations/{region}/entitlements/{entitlement-id}, folders/{folder-number}/locations/{region}/entitlements/{entitlement-id}, and projects/{project-id|project-number}/locations/{region}/entitlements/{entitlement-id}.
  final pulumi.Input<String>? name;
  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String>? parent;
  /// Privileged access that this service can be used to gate.
  /// Structure is documented below.
  final pulumi.Input<EntitlementPrivilegedAccess>? privilegedAccess;
  /// Defines the ways in which a requester should provide the justification while requesting for access.
  /// Structure is documented below.
  final pulumi.Input<EntitlementRequesterJustificationConfig>? requesterJustificationConfig;
  /// Output only. The current state of the Entitlement.
  final pulumi.Input<String>? state;
  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntitlementState].
  /// [additionalNotificationTargets] AdditionalNotificationTargets includes email addresses to be notified.
  /// [approvalWorkflow] The approvals needed before access will be granted to a requester.
  /// [createTime] Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [eligibleUsers] Who can create Grants using Entitlement. This list should contain at most one entry
  /// [entitlementId] The ID to use for this Entitlement. This will become the last part of the resource name.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [location] The region of the Entitlement resource.
  /// [maxRequestDuration] The maximum amount of time for which access would be granted for a request.
  /// [name] Output Only. The entitlement's name follows a hierarchical structure, comprising the organization, folder, or project, alongside the region and a unique entitlement ID.
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [privilegedAccess] Privileged access that this service can be used to gate.
  /// [requesterJustificationConfig] Defines the ways in which a requester should provide the justification while requesting for access.
  /// [state] Output only. The current state of the Entitlement.
  /// [updateTime] Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  EntitlementState({
    this.additionalNotificationTargets,
    this.approvalWorkflow,
    this.createTime,
    this.eligibleUsers,
    this.entitlementId,
    this.etag,
    this.location,
    this.maxRequestDuration,
    this.name,
    this.parent,
    this.privilegedAccess,
    this.requesterJustificationConfig,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNotificationTargets': ?pulumi.Input.mapOptionalInputValue<EntitlementAdditionalNotificationTargets, Map<String, dynamic>>(additionalNotificationTargets, (value) => value.toMap()),
      'approvalWorkflow': ?pulumi.Input.mapOptionalInputValue<EntitlementApprovalWorkflow, Map<String, dynamic>>(approvalWorkflow, (value) => value.toMap()),
      'createTime': ?createTime,
      'eligibleUsers': ?pulumi.Input.mapOptionalInputValue<List<EntitlementEligibleUser>, List<Map<String, dynamic>>>(eligibleUsers, (value) => pulumi.Input.encodeList<EntitlementEligibleUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entitlementId': ?entitlementId,
      'etag': ?etag,
      'location': ?location,
      'maxRequestDuration': ?maxRequestDuration,
      'name': ?name,
      'parent': ?parent,
      'privilegedAccess': ?pulumi.Input.mapOptionalInputValue<EntitlementPrivilegedAccess, Map<String, dynamic>>(privilegedAccess, (value) => value.toMap()),
      'requesterJustificationConfig': ?pulumi.Input.mapOptionalInputValue<EntitlementRequesterJustificationConfig, Map<String, dynamic>>(requesterJustificationConfig, (value) => value.toMap()),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory EntitlementState.fromMap(Map<String, dynamic> map) {
    return EntitlementState(
      additionalNotificationTargets: map['additionalNotificationTargets'] == null ? null : (EntitlementAdditionalNotificationTargets.fromMap((map['additionalNotificationTargets'] as Map).cast<String, dynamic>())).input(),
      approvalWorkflow: map['approvalWorkflow'] == null ? null : (EntitlementApprovalWorkflow.fromMap((map['approvalWorkflow'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      eligibleUsers: map['eligibleUsers'] == null ? null : (pulumi.Input.decodeList<EntitlementEligibleUser>(map['eligibleUsers'], (value) => EntitlementEligibleUser.fromMap((value as Map).cast<String, dynamic>()))).input(),
      entitlementId: map['entitlementId'] == null ? null : (map['entitlementId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxRequestDuration: map['maxRequestDuration'] == null ? null : (map['maxRequestDuration'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      privilegedAccess: map['privilegedAccess'] == null ? null : (EntitlementPrivilegedAccess.fromMap((map['privilegedAccess'] as Map).cast<String, dynamic>())).input(),
      requesterJustificationConfig: map['requesterJustificationConfig'] == null ? null : (EntitlementRequesterJustificationConfig.fromMap((map['requesterJustificationConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

