// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_backup_plan_detail.dart';
import 'auto_protection_policy_binding_summary.dart';
import 'auto_protection_policy_criteria.dart';
import 'auto_protection_policy_policy_evaluation_summary.dart';

/// Input properties used for looking up and filtering AutoProtectionPolicy resources.
class AutoProtectionPolicyState {
  /// The ID of the auto protection policy. This becomes the final component of the policy's resource name.
  final pulumi.Input<String?>? autoProtectionPolicyId;
  /// The backup plans to apply to the resources that match the policy's criteria. Each entry
  /// specifies a resource type and the backup plan that protects resources of that type.
  /// Currently, only one entry is supported.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyBackupPlanDetail>?>? backupPlanDetails;
  /// A summary of the scopes that the policy is applied to through bindings.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyBindingSummary>?>? bindingSummaries;
  /// The time when the auto protection policy was created.
  final pulumi.Input<String?>? createTime;
  /// The criteria that a resource must meet to be protected by the policy.
  /// Structure is documented below.
  final pulumi.Input<AutoProtectionPolicyCriteria?>? criteria;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the auto protection policy.
  final pulumi.Input<String?>? description;
  /// The etag of the auto protection policy, used for optimistic concurrency control.
  final pulumi.Input<String?>? etag;
  /// The location of the auto protection policy.
  final pulumi.Input<String?>? location;
  /// The resource name of the auto protection policy, in the format
  /// `projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}`.
  final pulumi.Input<String?>? name;
  /// A summary of the last run of the job that applies the policy to matching resources.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyPolicyEvaluationSummary>?>? policyEvaluationSummaries;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The current state of the auto protection policy.
  /// Possible values are `CREATING`, `ACTIVE`, `UPDATING`, and `DELETING`.
  final pulumi.Input<String?>? state;
  /// The time when the auto protection policy was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AutoProtectionPolicyState].
  /// [autoProtectionPolicyId] The ID of the auto protection policy. This becomes the final component of the policy's resource name.
  /// [backupPlanDetails] The backup plans to apply to the resources that match the policy's criteria. Each entry
  /// [bindingSummaries] A summary of the scopes that the policy is applied to through bindings.
  /// [createTime] The time when the auto protection policy was created.
  /// [criteria] The criteria that a resource must meet to be protected by the policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the auto protection policy.
  /// [etag] The etag of the auto protection policy, used for optimistic concurrency control.
  /// [location] The location of the auto protection policy.
  /// [name] The resource name of the auto protection policy, in the format
  /// [policyEvaluationSummaries] A summary of the last run of the job that applies the policy to matching resources.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the auto protection policy.
  /// [updateTime] The time when the auto protection policy was last updated.
  const AutoProtectionPolicyState({
    this.autoProtectionPolicyId,
    this.backupPlanDetails,
    this.bindingSummaries,
    this.createTime,
    this.criteria,
    this.deletionPolicy,
    this.description,
    this.etag,
    this.location,
    this.name,
    this.policyEvaluationSummaries,
    this.project,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionPolicyId': ?autoProtectionPolicyId,
      'backupPlanDetails': ?pulumi.Input.mapOptionalInputValue<List<AutoProtectionPolicyBackupPlanDetail>, List<Map<String, dynamic>>>(backupPlanDetails, (value) => pulumi.Input.encodeList<AutoProtectionPolicyBackupPlanDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindingSummaries': ?pulumi.Input.mapOptionalInputValue<List<AutoProtectionPolicyBindingSummary>, List<Map<String, dynamic>>>(bindingSummaries, (value) => pulumi.Input.encodeList<AutoProtectionPolicyBindingSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'criteria': ?pulumi.Input.mapOptionalInputValue<AutoProtectionPolicyCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'policyEvaluationSummaries': ?pulumi.Input.mapOptionalInputValue<List<AutoProtectionPolicyPolicyEvaluationSummary>, List<Map<String, dynamic>>>(policyEvaluationSummaries, (value) => pulumi.Input.encodeList<AutoProtectionPolicyPolicyEvaluationSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AutoProtectionPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyState(
      autoProtectionPolicyId: (() { final guardedValue = map['autoProtectionPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupPlanDetails: (() { final guardedValue = map['backupPlanDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyBackupPlanDetail>(guardedValue, (value) => AutoProtectionPolicyBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bindingSummaries: (() { final guardedValue = map['bindingSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyBindingSummary>(guardedValue, (value) => AutoProtectionPolicyBindingSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoProtectionPolicyCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyEvaluationSummaries: (() { final guardedValue = map['policyEvaluationSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyPolicyEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyPolicyEvaluationSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
