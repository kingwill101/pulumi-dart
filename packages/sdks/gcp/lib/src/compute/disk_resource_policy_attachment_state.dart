// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskResourcePolicyAttachment resources.
class DiskResourcePolicyAttachmentState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the disk in which the resource policies are attached to.
  final pulumi.Input<String>? disk;
  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the disk resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [DiskResourcePolicyAttachmentState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disk] The name of the disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the disk resides.
  const DiskResourcePolicyAttachmentState({
    this.deletionPolicy,
    this.disk,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'disk': ?disk,
      'name': ?name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory DiskResourcePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return DiskResourcePolicyAttachmentState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
