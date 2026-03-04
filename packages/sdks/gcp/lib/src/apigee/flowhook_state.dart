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
    this.continueOnError,
    this.description,
    this.environment,
    this.flowHookPoint,
    this.orgId,
    this.sharedflow,
  });

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
      continueOnError: (() {
        final guardedValue = map['continueOnError'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flowHookPoint: (() {
        final guardedValue = map['flowHookPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedflow: (() {
        final guardedValue = map['sharedflow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
