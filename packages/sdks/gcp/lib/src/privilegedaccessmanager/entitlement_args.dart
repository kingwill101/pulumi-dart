// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_additional_notification_targets.dart';
import 'entitlement_approval_workflow.dart';
import 'entitlement_eligible_user.dart';
import 'entitlement_privileged_access.dart';
import 'entitlement_requester_justification_config.dart';

/// {@template pulumi_privilegedaccessmanager_entitlement_entitlement_args_doc}
/// The set of arguments for Entitlement.
/// {@endtemplate}
/// {@macro pulumi_privilegedaccessmanager_entitlement_entitlement_args_doc}
class EntitlementArgs {
  /// AdditionalNotificationTargets includes email addresses to be notified.
  /// Structure is documented below.
  final pulumi.Input<EntitlementAdditionalNotificationTargets>?
  additionalNotificationTargets;

  /// The approvals needed before access will be granted to a requester.
  /// No approvals will be needed if this field is null. Different types of approval workflows that can be used to gate privileged access granting.
  /// Structure is documented below.
  final pulumi.Input<EntitlementApprovalWorkflow>? approvalWorkflow;

  /// Who can create Grants using Entitlement. This list should contain at most one entry
  /// Structure is documented below.
  final pulumi.Input<List<EntitlementEligibleUser>> eligibleUsers;

  /// The ID to use for this Entitlement. This will become the last part of the resource name.
  /// This value should be 4-63 characters, and valid characters are "[a-z]", "[0-9]", and "-". The first character should be from [a-z].
  /// This value should be unique among all other Entitlements under the specified `parent`.
  final pulumi.Input<String> entitlementId;

  /// The region of the Entitlement resource.
  final pulumi.Input<String> location;

  /// The maximum amount of time for which access would be granted for a request.
  /// A requester can choose to ask for access for less than this duration but never more.
  /// Format: calculate the time in seconds and concatenate it with 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
  final pulumi.Input<String> maxRequestDuration;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String> parent;

  /// Privileged access that this service can be used to gate.
  /// Structure is documented below.
  final pulumi.Input<EntitlementPrivilegedAccess> privilegedAccess;

  /// Defines the ways in which a requester should provide the justification while requesting for access.
  /// Structure is documented below.
  final pulumi.Input<EntitlementRequesterJustificationConfig>
  requesterJustificationConfig;

  /// Creates a new [EntitlementArgs].
  /// [additionalNotificationTargets] AdditionalNotificationTargets includes email addresses to be notified.
  /// [approvalWorkflow] The approvals needed before access will be granted to a requester.
  /// [eligibleUsers] Who can create Grants using Entitlement. This list should contain at most one entry
  /// [entitlementId] The ID to use for this Entitlement. This will become the last part of the resource name.
  /// [location] The region of the Entitlement resource.
  /// [maxRequestDuration] The maximum amount of time for which access would be granted for a request.
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [privilegedAccess] Privileged access that this service can be used to gate.
  /// [requesterJustificationConfig] Defines the ways in which a requester should provide the justification while requesting for access.
  EntitlementArgs({
    this.additionalNotificationTargets,
    this.approvalWorkflow,
    required this.eligibleUsers,
    required this.entitlementId,
    required this.location,
    required this.maxRequestDuration,
    required this.parent,
    required this.privilegedAccess,
    required this.requesterJustificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNotificationTargets':
          ?pulumi.Input.mapOptionalInputValue<
            EntitlementAdditionalNotificationTargets,
            Map<String, dynamic>
          >(additionalNotificationTargets, (value) => value.toMap()),
      'approvalWorkflow':
          ?pulumi.Input.mapOptionalInputValue<
            EntitlementApprovalWorkflow,
            Map<String, dynamic>
          >(approvalWorkflow, (value) => value.toMap()),
      'eligibleUsers':
          pulumi.Input.mapInputValue<
            List<EntitlementEligibleUser>,
            List<Map<String, dynamic>>
          >(
            eligibleUsers,
            (value) =>
                pulumi.Input.encodeList<
                  EntitlementEligibleUser,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'entitlementId': entitlementId,
      'location': location,
      'maxRequestDuration': maxRequestDuration,
      'parent': parent,
      'privilegedAccess':
          pulumi.Input.mapInputValue<
            EntitlementPrivilegedAccess,
            Map<String, dynamic>
          >(privilegedAccess, (value) => value.toMap()),
      'requesterJustificationConfig':
          pulumi.Input.mapInputValue<
            EntitlementRequesterJustificationConfig,
            Map<String, dynamic>
          >(requesterJustificationConfig, (value) => value.toMap()),
    };
  }

  factory EntitlementArgs.fromMap(Map<String, dynamic> map) {
    return EntitlementArgs(
      additionalNotificationTargets: (() {
        final guardedValue = map['additionalNotificationTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EntitlementAdditionalNotificationTargets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      approvalWorkflow: (() {
        final guardedValue = map['approvalWorkflow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EntitlementApprovalWorkflow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eligibleUsers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EntitlementEligibleUser>(
          map['eligibleUsers']!,
          (value) => EntitlementEligibleUser.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      entitlementId: pulumi.Input.fromValue(map['entitlementId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      maxRequestDuration: pulumi.Input.fromValue(
        map['maxRequestDuration'] as String,
      ),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      privilegedAccess: pulumi.Input.fromValue(
        EntitlementPrivilegedAccess.fromMap(
          (map['privilegedAccess']! as Map).cast<String, dynamic>(),
        ),
      ),
      requesterJustificationConfig: pulumi.Input.fromValue(
        EntitlementRequesterJustificationConfig.fromMap(
          (map['requesterJustificationConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
