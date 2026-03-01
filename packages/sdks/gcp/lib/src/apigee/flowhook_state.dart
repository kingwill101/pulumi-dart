// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Flowhook resources.
class FlowhookState {
  /// Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  final pulumi.Input<bool>? continueOnError;
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
  /// [description] Description of the flow hook.
  /// [environment] The resource ID of the environment.
  /// [flowHookPoint] Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  /// [orgId] The Apigee Organization associated with the environment
  /// [sharedflow] Id of the Sharedflow attaching to a flowhook point.
  FlowhookState({
    pulumi.Output<bool>? continueOnError,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? flowHookPoint,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? sharedflow,
  }) :
      continueOnError = pulumi.Input.asOptionalInput<bool>(continueOnError),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      flowHookPoint = pulumi.Input.asOptionalInput<String>(flowHookPoint),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      sharedflow = pulumi.Input.asOptionalInput<String>(sharedflow);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnError': ?continueOnError,
      'description': ?description,
      'environment': ?environment,
      'flowHookPoint': ?flowHookPoint,
      'orgId': ?orgId,
      'sharedflow': ?sharedflow,
    };
  }

  factory FlowhookState.fromMap(Map<String, dynamic> map) {
    return FlowhookState(
      continueOnError: map['continueOnError'] == null ? null : pulumi.Output.create<bool>(map['continueOnError'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      flowHookPoint: map['flowHookPoint'] == null ? null : pulumi.Output.create<String>(map['flowHookPoint'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      sharedflow: map['sharedflow'] == null ? null : pulumi.Output.create<String>(map['sharedflow'] as String),
    );
  }
}

