// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_additional_notification_target.dart';
import 'get_entitlement_approval_workflow.dart';
import 'get_entitlement_eligible_user.dart';
import 'get_entitlement_privileged_access.dart';
import 'get_entitlement_requester_justification_config.dart';

/// Result data returned by getEntitlement.
class GetEntitlementResult {
  final List<GetEntitlementAdditionalNotificationTarget> additionalNotificationTargets;
  final List<GetEntitlementApprovalWorkflow> approvalWorkflows;
  final String createTime;
  final String deletionPolicy;
  final List<GetEntitlementEligibleUser> eligibleUsers;
  final String? entitlementId;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String maxRequestDuration;
  final String name;
  final String? parent;
  final List<GetEntitlementPrivilegedAccess> privilegedAccesses;
  final List<GetEntitlementRequesterJustificationConfig> requesterJustificationConfigs;
  final String state;
  final String updateTime;

  /// Creates a new [GetEntitlementResult].
  /// [additionalNotificationTargets] Required.
  /// [approvalWorkflows] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [eligibleUsers] Required.
  /// [entitlementId] Optional.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [maxRequestDuration] Required.
  /// [name] Required.
  /// [parent] Optional.
  /// [privilegedAccesses] Required.
  /// [requesterJustificationConfigs] Required.
  /// [state] Required.
  /// [updateTime] Required.
  const GetEntitlementResult({
    required this.additionalNotificationTargets,
    required this.approvalWorkflows,
    required this.createTime,
    required this.deletionPolicy,
    required this.eligibleUsers,
    this.entitlementId,
    required this.etag,
    required this.id,
    this.location,
    required this.maxRequestDuration,
    required this.name,
    this.parent,
    required this.privilegedAccesses,
    required this.requesterJustificationConfigs,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNotificationTargets': pulumi.Input.encodeList<GetEntitlementAdditionalNotificationTarget, Map<String, dynamic>>(additionalNotificationTargets, (value) => value.toMap()),
      'approvalWorkflows': pulumi.Input.encodeList<GetEntitlementApprovalWorkflow, Map<String, dynamic>>(approvalWorkflows, (value) => value.toMap()),
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'eligibleUsers': pulumi.Input.encodeList<GetEntitlementEligibleUser, Map<String, dynamic>>(eligibleUsers, (value) => value.toMap()),
      'entitlementId': ?entitlementId,
      'etag': etag,
      'id': id,
      'location': ?location,
      'maxRequestDuration': maxRequestDuration,
      'name': name,
      'parent': ?parent,
      'privilegedAccesses': pulumi.Input.encodeList<GetEntitlementPrivilegedAccess, Map<String, dynamic>>(privilegedAccesses, (value) => value.toMap()),
      'requesterJustificationConfigs': pulumi.Input.encodeList<GetEntitlementRequesterJustificationConfig, Map<String, dynamic>>(requesterJustificationConfigs, (value) => value.toMap()),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetEntitlementResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementResult(
      additionalNotificationTargets: pulumi.Input.decodeList<GetEntitlementAdditionalNotificationTarget>(map['additionalNotificationTargets']!, (value) => GetEntitlementAdditionalNotificationTarget.fromMap((value as Map).cast<String, dynamic>())),
      approvalWorkflows: pulumi.Input.decodeList<GetEntitlementApprovalWorkflow>(map['approvalWorkflows']!, (value) => GetEntitlementApprovalWorkflow.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      eligibleUsers: pulumi.Input.decodeList<GetEntitlementEligibleUser>(map['eligibleUsers']!, (value) => GetEntitlementEligibleUser.fromMap((value as Map).cast<String, dynamic>())),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxRequestDuration: map['maxRequestDuration'] as String,
      name: map['name'] as String,
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privilegedAccesses: pulumi.Input.decodeList<GetEntitlementPrivilegedAccess>(map['privilegedAccesses']!, (value) => GetEntitlementPrivilegedAccess.fromMap((value as Map).cast<String, dynamic>())),
      requesterJustificationConfigs: pulumi.Input.decodeList<GetEntitlementRequesterJustificationConfig>(map['requesterJustificationConfigs']!, (value) => GetEntitlementRequesterJustificationConfig.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
