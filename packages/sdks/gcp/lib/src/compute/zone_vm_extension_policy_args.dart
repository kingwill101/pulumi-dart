// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_vm_extension_policy_extension_policy.dart';
import 'zone_vm_extension_policy_instance_selector.dart';

/// {@template pulumi_compute_zone_vm_extension_policy_zone_vm_extension_policy_args_doc}
/// The set of arguments for ZoneVmExtensionPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_zone_vm_extension_policy_zone_vm_extension_policy_args_doc}
class ZoneVmExtensionPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// A map of extension names (for example, "ops-agent") to their corresponding policy configurations.
  /// Structure is documented below.
  final pulumi.Input<List<ZoneVmExtensionPolicyExtensionPolicy>> extensionPolicies;
  /// Selectors to target VMs for this policy.
  /// Structure is documented below.
  final pulumi.Input<List<ZoneVmExtensionPolicyInstanceSelector>?>? instanceSelectors;
  /// Name of the resource. Provided by the client when the resource is created.
  final pulumi.Input<String?>? name;
  /// Priority of this policy.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Name of the zone for this request.
  final pulumi.Input<String> zone;

  /// Creates a new [ZoneVmExtensionPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [extensionPolicies] A map of extension names (for example, "ops-agent") to their corresponding policy configurations.
  /// [instanceSelectors] Selectors to target VMs for this policy.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [priority] Priority of this policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Name of the zone for this request.
  const ZoneVmExtensionPolicyArgs({
    this.deletionPolicy,
    this.description,
    required this.extensionPolicies,
    this.instanceSelectors,
    this.name,
    this.priority,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'extensionPolicies': pulumi.Input.mapInputValue<List<ZoneVmExtensionPolicyExtensionPolicy>, List<Map<String, dynamic>>>(extensionPolicies, (value) => pulumi.Input.encodeList<ZoneVmExtensionPolicyExtensionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectors': ?pulumi.Input.mapOptionalInputValue<List<ZoneVmExtensionPolicyInstanceSelector>, List<Map<String, dynamic>>>(instanceSelectors, (value) => pulumi.Input.encodeList<ZoneVmExtensionPolicyInstanceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'zone': zone,
    };
  }

  factory ZoneVmExtensionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ZoneVmExtensionPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneVmExtensionPolicyExtensionPolicy>(map['extensionPolicies']!, (value) => ZoneVmExtensionPolicyExtensionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      instanceSelectors: (() { final guardedValue = map['instanceSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneVmExtensionPolicyInstanceSelector>(guardedValue, (value) => ZoneVmExtensionPolicyInstanceSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
