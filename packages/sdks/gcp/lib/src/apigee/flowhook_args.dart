// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_flowhook_flowhook_args_doc}
/// The set of arguments for Flowhook.
/// {@endtemplate}
/// {@macro pulumi_apigee_flowhook_flowhook_args_doc}
class FlowhookArgs {
  /// Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  final pulumi.Input<bool>? continueOnError;
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
  /// [description] Description of the flow hook.
  /// [environment] The resource ID of the environment.
  /// [flowHookPoint] Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  /// [orgId] The Apigee Organization associated with the environment
  /// [sharedflow] Id of the Sharedflow attaching to a flowhook point.
  FlowhookArgs({
    pulumi.Output<bool>? continueOnError,
    pulumi.Output<String>? description,
    required pulumi.Output<String> environment,
    required pulumi.Output<String> flowHookPoint,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> sharedflow,
  }) :
      continueOnError = pulumi.Input.asOptionalInput<bool>(continueOnError),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asInput<String>(environment),
      flowHookPoint = pulumi.Input.asInput<String>(flowHookPoint),
      orgId = pulumi.Input.asInput<String>(orgId),
      sharedflow = pulumi.Input.asInput<String>(sharedflow);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnError': ?continueOnError,
      'description': ?description,
      'environment': environment,
      'flowHookPoint': flowHookPoint,
      'orgId': orgId,
      'sharedflow': sharedflow,
    };
  }

  factory FlowhookArgs.fromMap(Map<String, dynamic> map) {
    return FlowhookArgs(
      continueOnError: map['continueOnError'] == null ? null : pulumi.Output.create<bool>(map['continueOnError'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      flowHookPoint: pulumi.Output.create<String>(map['flowHookPoint'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      sharedflow: pulumi.Output.create<String>(map['sharedflow'] as String),
    );
  }
}

