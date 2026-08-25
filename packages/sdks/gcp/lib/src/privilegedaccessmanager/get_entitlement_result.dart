// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_additional_notification_target.dart';
import 'get_entitlement_approval_workflow.dart';
import 'get_entitlement_eligible_user.dart';
import 'get_entitlement_privileged_access.dart';
import 'get_entitlement_requester_justification_config.dart';

/// Result data returned by getEntitlement.
class GetEntitlementResult {
  final List<GetEntitlementAdditionalNotificationTarget>? additionalNotificationTargets;
  final List<GetEntitlementApprovalWorkflow>? approvalWorkflows;
  final String? createTime;
  final String? deletionPolicy;
  final List<GetEntitlementEligibleUser>? eligibleUsers;
  final String? entitlementId;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? maxRequestDuration;
  final String? name;
  final String? parent;
  final List<GetEntitlementPrivilegedAccess>? privilegedAccesses;
  final List<GetEntitlementRequesterJustificationConfig>? requesterJustificationConfigs;
  final String? state;
  final String? updateTime;

  /// Creates a new [GetEntitlementResult].
  /// [additionalNotificationTargets] Optional.
  /// [approvalWorkflows] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [eligibleUsers] Optional.
  /// [entitlementId] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [maxRequestDuration] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  /// [privilegedAccesses] Optional.
  /// [requesterJustificationConfigs] Optional.
  /// [state] Optional.
  /// [updateTime] Optional.
  const GetEntitlementResult({
    this.additionalNotificationTargets,
    this.approvalWorkflows,
    this.createTime,
    this.deletionPolicy,
    this.eligibleUsers,
    this.entitlementId,
    this.etag,
    this.id,
    this.location,
    this.maxRequestDuration,
    this.name,
    this.parent,
    this.privilegedAccesses,
    this.requesterJustificationConfigs,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNotificationTargets': ?(() { final guardedValue = additionalNotificationTargets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementAdditionalNotificationTarget, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'approvalWorkflows': ?(() { final guardedValue = approvalWorkflows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementApprovalWorkflow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'eligibleUsers': ?(() { final guardedValue = eligibleUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementEligibleUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'entitlementId': ?entitlementId,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'maxRequestDuration': ?maxRequestDuration,
      'name': ?name,
      'parent': ?parent,
      'privilegedAccesses': ?(() { final guardedValue = privilegedAccesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementPrivilegedAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'requesterJustificationConfigs': ?(() { final guardedValue = requesterJustificationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementRequesterJustificationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetEntitlementResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementResult(
      additionalNotificationTargets: (() { final guardedValue = map['additionalNotificationTargets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementAdditionalNotificationTarget>(guardedValue, (value) => GetEntitlementAdditionalNotificationTarget.fromMap((value as Map).cast<String, dynamic>())); })(),
      approvalWorkflows: (() { final guardedValue = map['approvalWorkflows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementApprovalWorkflow>(guardedValue, (value) => GetEntitlementApprovalWorkflow.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eligibleUsers: (() { final guardedValue = map['eligibleUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementEligibleUser>(guardedValue, (value) => GetEntitlementEligibleUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxRequestDuration: (() { final guardedValue = map['maxRequestDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privilegedAccesses: (() { final guardedValue = map['privilegedAccesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementPrivilegedAccess>(guardedValue, (value) => GetEntitlementPrivilegedAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
      requesterJustificationConfigs: (() { final guardedValue = map['requesterJustificationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementRequesterJustificationConfig>(guardedValue, (value) => GetEntitlementRequesterJustificationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
