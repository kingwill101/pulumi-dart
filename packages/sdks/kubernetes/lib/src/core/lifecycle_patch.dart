// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_handler_patch.dart';

/// Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
class LifecyclePatch {
  /// PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  final pulumi.Input<LifecycleHandlerPatch>? postStart;
  /// PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  final pulumi.Input<LifecycleHandlerPatch>? preStop;
  /// StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name
  final pulumi.Input<String>? stopSignal;

  /// Creates a new [LifecyclePatch].
  /// [postStart] PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  /// [preStop] PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  /// [stopSignal] StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name
  LifecyclePatch({
    this.postStart,
    this.preStop,
    this.stopSignal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postStart': ?pulumi.Input.mapOptionalInputValue<LifecycleHandlerPatch, Map<String, dynamic>>(postStart, (value) => value.toMap()),
      'preStop': ?pulumi.Input.mapOptionalInputValue<LifecycleHandlerPatch, Map<String, dynamic>>(preStop, (value) => value.toMap()),
      'stopSignal': ?stopSignal,
    };
  }

  factory LifecyclePatch.fromMap(Map<String, dynamic> map) {
    return LifecyclePatch(
      postStart: map['postStart'] == null ? null : (LifecycleHandlerPatch.fromMap((map['postStart']! as Map).cast<String, dynamic>())).input(),
      preStop: map['preStop'] == null ? null : (LifecycleHandlerPatch.fromMap((map['preStop']! as Map).cast<String, dynamic>())).input(),
      stopSignal: map['stopSignal'] == null ? null : (map['stopSignal']! as String).input(),
    );
  }
}

