// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAttachment resources.
class InstanceAttachmentState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The resource ID of the environment.
  final pulumi.Input<String?>? environment;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String?>? instanceId;
  /// The name of the newly created  attachment (output parameter).
  final pulumi.Input<String?>? name;

  /// Creates a new [InstanceAttachmentState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environment] The resource ID of the environment.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [name] The name of the newly created  attachment (output parameter).
  const InstanceAttachmentState({
    this.deletionPolicy,
    this.environment,
    this.instanceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'environment': ?environment,
      'instanceId': ?instanceId,
      'name': ?name,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
