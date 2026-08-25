// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_extension_policy.dart';
import 'global_vm_extension_policy_instance_selector.dart';
import 'global_vm_extension_policy_rollout_operation.dart';

/// Input properties used for looking up and filtering GlobalVmExtensionPolicy resources.
class GlobalVmExtensionPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Map from extension (eg: "cloudops") to its policy configuration.
  /// Structure is documented below.
  final pulumi.Input<List<GlobalVmExtensionPolicyExtensionPolicy>?>? extensionPolicies;
  /// Selector to target VMs for a policy.
  /// Structure is documented below.
  final pulumi.Input<List<GlobalVmExtensionPolicyInstanceSelector>?>? instanceSelectors;
  /// Type of the resource.
  final pulumi.Input<String?>? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long and match the regular expression '^a-z?$' to comply with RFC1035.
  final pulumi.Input<String?>? name;
  /// Used to resolve conflicts when multiple policies are active. Defaults to 0.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Represents the rollout operation.
  /// Structure is documented below.
  final pulumi.Input<GlobalVmExtensionPolicyRolloutOperation?>? rolloutOperation;
  /// The scoped resource status.
  final pulumi.Input<String?>? scopedResourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  final pulumi.Input<String?>? selfLink;
  /// Update timestamp in RFC3339 text format.
  final pulumi.Input<String?>? updateTimestamp;

  /// Creates a new [GlobalVmExtensionPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [extensionPolicies] Map from extension (eg: "cloudops") to its policy configuration.
  /// [instanceSelectors] Selector to target VMs for a policy.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long and match the regular expression '^a-z?$' to comply with RFC1035.
  /// [priority] Used to resolve conflicts when multiple policies are active. Defaults to 0.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutOperation] Represents the rollout operation.
  /// [scopedResourceStatus] The scoped resource status.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [updateTimestamp] Update timestamp in RFC3339 text format.
  const GlobalVmExtensionPolicyState({
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.extensionPolicies,
    this.instanceSelectors,
    this.kind,
    this.name,
    this.priority,
    this.project,
    this.rolloutOperation,
    this.scopedResourceStatus,
    this.selfLink,
    this.updateTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'extensionPolicies': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyExtensionPolicy>, List<Map<String, dynamic>>>(extensionPolicies, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyExtensionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectors': ?pulumi.Input.mapOptionalInputValue<List<GlobalVmExtensionPolicyInstanceSelector>, List<Map<String, dynamic>>>(instanceSelectors, (value) => pulumi.Input.encodeList<GlobalVmExtensionPolicyInstanceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'rolloutOperation': ?pulumi.Input.mapOptionalInputValue<GlobalVmExtensionPolicyRolloutOperation, Map<String, dynamic>>(rolloutOperation, (value) => value.toMap()),
      'scopedResourceStatus': ?scopedResourceStatus,
      'selfLink': ?selfLink,
      'updateTimestamp': ?updateTimestamp,
    };
  }

  factory GlobalVmExtensionPolicyState.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyState(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionPolicies: (() { final guardedValue = map['extensionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyExtensionPolicy>(guardedValue, (value) => GlobalVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectors: (() { final guardedValue = map['instanceSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalVmExtensionPolicyInstanceSelector>(guardedValue, (value) => GlobalVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutOperation: (() { final guardedValue = map['rolloutOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalVmExtensionPolicyRolloutOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopedResourceStatus: (() { final guardedValue = map['scopedResourceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTimestamp: (() { final guardedValue = map['updateTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
