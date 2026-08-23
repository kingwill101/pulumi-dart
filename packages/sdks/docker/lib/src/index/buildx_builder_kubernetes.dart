// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildx_builder_kubernetes_limits.dart';
import 'buildx_builder_kubernetes_qemu.dart';
import 'buildx_builder_kubernetes_requests.dart';

class BuildxBuilderKubernetes {
  /// Sets additional annotations on the deployments and pods.
  final pulumi.Input<String>? annotations;
  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final pulumi.Input<bool>? defaultLoad;
  /// Sets the image to use for running BuildKit.
  final pulumi.Input<String>? image;
  /// Sets additional labels on the deployments and pods.
  final pulumi.Input<String>? labels;
  /// Resource limits for CPU, memory, and ephemeral storage.
  final pulumi.Input<BuildxBuilderKubernetesLimits>? limits;
  /// Load-balancing strategy (sticky or random).
  final pulumi.Input<String>? loadbalance;
  /// Sets the Kubernetes namespace.
  final pulumi.Input<String>? namespace;
  /// Sets the pod's nodeSelector label(s).
  final pulumi.Input<String>? nodeselector;
  /// QEMU emulation configuration.
  final pulumi.Input<BuildxBuilderKubernetesQemu>? qemu;
  /// Sets the number of Pod replicas to create.
  final pulumi.Input<int>? replicas;
  /// Resource requests for CPU, memory, and ephemeral storage.
  final pulumi.Input<BuildxBuilderKubernetesRequests>? requests;
  /// Run the container as a non-root user.
  final pulumi.Input<bool>? rootless;
  /// Sets the scheduler responsible for scheduling the pod.
  final pulumi.Input<String>? schedulername;
  /// Sets the pod's serviceAccountName.
  final pulumi.Input<String>? serviceaccount;
  /// Set the timeout limit for pod provisioning.
  final pulumi.Input<String>? timeout;
  /// Configures the pod's taint toleration.
  final pulumi.Input<String>? tolerations;

  /// Creates a new [BuildxBuilderKubernetes].
  /// [annotations] Sets additional annotations on the deployments and pods.
  /// [defaultLoad] Automatically load images to the Docker Engine image store. Defaults to `false`
  /// [image] Sets the image to use for running BuildKit.
  /// [labels] Sets additional labels on the deployments and pods.
  /// [limits] Resource limits for CPU, memory, and ephemeral storage.
  /// [loadbalance] Load-balancing strategy (sticky or random).
  /// [namespace] Sets the Kubernetes namespace.
  /// [nodeselector] Sets the pod's nodeSelector label(s).
  /// [qemu] QEMU emulation configuration.
  /// [replicas] Sets the number of Pod replicas to create.
  /// [requests] Resource requests for CPU, memory, and ephemeral storage.
  /// [rootless] Run the container as a non-root user.
  /// [schedulername] Sets the scheduler responsible for scheduling the pod.
  /// [serviceaccount] Sets the pod's serviceAccountName.
  /// [timeout] Set the timeout limit for pod provisioning.
  /// [tolerations] Configures the pod's taint toleration.
  const BuildxBuilderKubernetes({
    this.annotations,
    this.defaultLoad,
    this.image,
    this.labels,
    this.limits,
    this.loadbalance,
    this.namespace,
    this.nodeselector,
    this.qemu,
    this.replicas,
    this.requests,
    this.rootless,
    this.schedulername,
    this.serviceaccount,
    this.timeout,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'defaultLoad': ?defaultLoad,
      'image': ?image,
      'labels': ?labels,
      'limits': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderKubernetesLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'loadbalance': ?loadbalance,
      'namespace': ?namespace,
      'nodeselector': ?nodeselector,
      'qemu': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderKubernetesQemu, Map<String, dynamic>>(qemu, (value) => value.toMap()),
      'replicas': ?replicas,
      'requests': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderKubernetesRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'rootless': ?rootless,
      'schedulername': ?schedulername,
      'serviceaccount': ?serviceaccount,
      'timeout': ?timeout,
      'tolerations': ?tolerations,
    };
  }

  factory BuildxBuilderKubernetes.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderKubernetes(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLoad: (() { final guardedValue = map['defaultLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderKubernetesLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadbalance: (() { final guardedValue = map['loadbalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeselector: (() { final guardedValue = map['nodeselector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qemu: (() { final guardedValue = map['qemu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderKubernetesQemu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderKubernetesRequests.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootless: (() { final guardedValue = map['rootless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedulername: (() { final guardedValue = map['schedulername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceaccount: (() { final guardedValue = map['serviceaccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tolerations: (() { final guardedValue = map['tolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
