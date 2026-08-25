// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_deployment_resource_pool_dedicated_resources.dart';

/// Input properties used for looking up and filtering AiDeploymentResourcePool resources.
class AiDeploymentResourcePoolState {
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String?>? createTime;
  /// The underlying dedicated resources that the deployment resource pool uses.
  /// Structure is documented below.
  final pulumi.Input<AiDeploymentResourcePoolDedicatedResources?>? dedicatedResources;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of deployment resource pool. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiDeploymentResourcePoolState].
  /// [createTime] A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [dedicatedResources] The underlying dedicated resources that the deployment resource pool uses.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of deployment resource pool. eg us-central1
  const AiDeploymentResourcePoolState({
    this.createTime,
    this.dedicatedResources,
    this.deletionPolicy,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<AiDeploymentResourcePoolDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiDeploymentResourcePoolState.fromMap(Map<String, dynamic> map) {
    return AiDeploymentResourcePoolState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiDeploymentResourcePoolDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
