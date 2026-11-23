// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_binding_binding_evaluation_summary.dart';

/// Input properties used for looking up and filtering AutoProtectionPolicyBinding resources.
class AutoProtectionPolicyBindingState {
  /// The ID of the binding. This becomes the final component of the binding's resource name.
  final pulumi.Input<String?>? autoProtectionPolicyBindingId;
  /// The ID of the auto protection policy to bind.
  final pulumi.Input<String?>? autoProtectionPolicyId;
  /// A summary of the last run of the job that applies the policy to matching resources within the binding's scope.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyBindingBindingEvaluationSummary>?>? bindingEvaluationSummaries;
  /// The time when the binding was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The etag of the binding, used for optimistic concurrency control.
  final pulumi.Input<String?>? etag;
  /// The location of the auto protection policy.
  final pulumi.Input<String?>? location;
  /// The resource name of the binding, in the format
  /// `projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}/bindings/{auto_protection_policy_binding_id}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The container that the policy is applied to, in the format `projects/{project}`.
  final pulumi.Input<String?>? scope;
  /// The current state of the binding.
  /// Possible values are `CREATING`, `ACTIVE`, and `DELETION_INITIATED`.
  final pulumi.Input<String?>? state;
  /// The time when the binding was last updated.
  final pulumi.Input<String?>? updateTime;
  /// Whether Terraform should wait for the binding and all associated background resource
  /// unprotection operations to be completely deleted before returning. Setting
  /// `waitForDelete = true` will block the Terraform script/execution until all resources
  /// are unprotected and the binding is fully removed.
  final pulumi.Input<bool?>? waitForDelete;

  /// Creates a new [AutoProtectionPolicyBindingState].
  /// [autoProtectionPolicyBindingId] The ID of the binding. This becomes the final component of the binding's resource name.
  /// [autoProtectionPolicyId] The ID of the auto protection policy to bind.
  /// [bindingEvaluationSummaries] A summary of the last run of the job that applies the policy to matching resources within the binding's scope.
  /// [createTime] The time when the binding was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] The etag of the binding, used for optimistic concurrency control.
  /// [location] The location of the auto protection policy.
  /// [name] The resource name of the binding, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] The container that the policy is applied to, in the format `projects/{project}`.
  /// [state] The current state of the binding.
  /// [updateTime] The time when the binding was last updated.
  /// [waitForDelete] Whether Terraform should wait for the binding and all associated background resource
  const AutoProtectionPolicyBindingState({
    this.autoProtectionPolicyBindingId,
    this.autoProtectionPolicyId,
    this.bindingEvaluationSummaries,
    this.createTime,
    this.deletionPolicy,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.scope,
    this.state,
    this.updateTime,
    this.waitForDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionPolicyBindingId': ?autoProtectionPolicyBindingId,
      'autoProtectionPolicyId': ?autoProtectionPolicyId,
      'bindingEvaluationSummaries': ?pulumi.Input.mapOptionalInputValue<List<AutoProtectionPolicyBindingBindingEvaluationSummary>, List<Map<String, dynamic>>>(bindingEvaluationSummaries, (value) => pulumi.Input.encodeList<AutoProtectionPolicyBindingBindingEvaluationSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'scope': ?scope,
      'state': ?state,
      'updateTime': ?updateTime,
      'waitForDelete': ?waitForDelete,
    };
  }

  factory AutoProtectionPolicyBindingState.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyBindingState(
      autoProtectionPolicyBindingId: (() { final guardedValue = map['autoProtectionPolicyBindingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoProtectionPolicyId: (() { final guardedValue = map['autoProtectionPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindingEvaluationSummaries: (() { final guardedValue = map['bindingEvaluationSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyBindingBindingEvaluationSummary>(guardedValue, (value) => AutoProtectionPolicyBindingBindingEvaluationSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitForDelete: (() { final guardedValue = map['waitForDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
