// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Flowhook resources.
class FlowhookState {
  /// Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  final pulumi.Input<bool>? continueOnError;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the flow hook.
  final pulumi.Input<String>? description;
  /// The resource ID of the environment.
  final pulumi.Input<String>? environment;
  /// Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  final pulumi.Input<String>? flowHookPoint;
  /// The Apigee Organization associated with the environment
  final pulumi.Input<String>? orgId;
  /// Id of the Sharedflow attaching to a flowhook point.
  final pulumi.Input<String>? sharedflow;

  /// Creates a new [FlowhookState].
  /// [continueOnError] Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Description of the flow hook.
  /// [environment] The resource ID of the environment.
  /// [flowHookPoint] Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  /// [orgId] The Apigee Organization associated with the environment
  /// [sharedflow] Id of the Sharedflow attaching to a flowhook point.
  const FlowhookState({
    this.continueOnError,
    this.deletionPolicy,
    this.description,
    this.environment,
    this.flowHookPoint,
    this.orgId,
    this.sharedflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnError': ?continueOnError,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'environment': ?environment,
      'flowHookPoint': ?flowHookPoint,
      'orgId': ?orgId,
      'sharedflow': ?sharedflow,
    };
  }

  factory FlowhookState.fromMap(Map<String, dynamic> map) {
    return FlowhookState(
      continueOnError: (() { final guardedValue = map['continueOnError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowHookPoint: (() { final guardedValue = map['flowHookPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedflow: (() { final guardedValue = map['sharedflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
