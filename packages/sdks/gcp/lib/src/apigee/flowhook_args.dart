// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_flowhook_flowhook_args_doc}
/// The set of arguments for Flowhook.
/// {@endtemplate}
/// {@macro pulumi_apigee_flowhook_flowhook_args_doc}
class FlowhookArgs {
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
  final pulumi.Input<String> environment;
  /// Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  final pulumi.Input<String> flowHookPoint;
  /// The Apigee Organization associated with the environment
  final pulumi.Input<String> orgId;
  /// Id of the Sharedflow attaching to a flowhook point.
  final pulumi.Input<String> sharedflow;

  /// Creates a new [FlowhookArgs].
  /// [continueOnError] Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Description of the flow hook.
  /// [environment] The resource ID of the environment.
  /// [flowHookPoint] Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  /// [orgId] The Apigee Organization associated with the environment
  /// [sharedflow] Id of the Sharedflow attaching to a flowhook point.
  const FlowhookArgs({
    this.continueOnError,
    this.deletionPolicy,
    this.description,
    required this.environment,
    required this.flowHookPoint,
    required this.orgId,
    required this.sharedflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnError': ?continueOnError,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'environment': environment,
      'flowHookPoint': flowHookPoint,
      'orgId': orgId,
      'sharedflow': sharedflow,
    };
  }

  factory FlowhookArgs.fromMap(Map<String, dynamic> map) {
    return FlowhookArgs(
      continueOnError: (() { final guardedValue = map['continueOnError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      flowHookPoint: pulumi.Input.fromValue(map['flowHookPoint'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      sharedflow: pulumi.Input.fromValue(map['sharedflow'] as String),
    );
  }
}
