// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_handler.dart';

/// Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
class Lifecycle {
  /// PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  final LifecycleHandler? postStart;
  /// PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  final LifecycleHandler? preStop;
  /// StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name
  final String? stopSignal;

  /// Creates a new [Lifecycle].
  /// [postStart] PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  /// [preStop] PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
  /// [stopSignal] StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name
  Lifecycle({
    this.postStart,
    this.preStop,
    this.stopSignal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postStart': ?postStart == null ? null : postStart!.toMap(),
      'preStop': ?preStop == null ? null : preStop!.toMap(),
      'stopSignal': ?stopSignal,
    };
  }

  factory Lifecycle.fromMap(Map<String, dynamic> map) {
    return Lifecycle(
      postStart: map['postStart'] == null ? null : LifecycleHandler.fromMap((map['postStart'] as Map).cast<String, dynamic>()),
      preStop: map['preStop'] == null ? null : LifecycleHandler.fromMap((map['preStop'] as Map).cast<String, dynamic>()),
      stopSignal: map['stopSignal'] == null ? null : map['stopSignal'] as String,
    );
  }
}

