// ignore_for_file: unused_element, unnecessary_cast

import 'buildx_builder_kubernetes_limits.dart';
import 'buildx_builder_kubernetes_qemu.dart';
import 'buildx_builder_kubernetes_requests.dart';

class BuildxBuilderKubernetes {
  /// Sets additional annotations on the deployments and pods.
  final String? annotations;
  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final bool? defaultLoad;
  /// Sets the image to use for running BuildKit.
  final String? image;
  /// Sets additional labels on the deployments and pods.
  final String? labels;
  /// Resource limits for CPU, memory, and ephemeral storage.
  final BuildxBuilderKubernetesLimits? limits;
  /// Load-balancing strategy (sticky or random).
  final String? loadbalance;
  /// Sets the Kubernetes namespace.
  final String? namespace;
  /// Sets the pod's nodeSelector label(s).
  final String? nodeselector;
  /// QEMU emulation configuration.
  final BuildxBuilderKubernetesQemu? qemu;
  /// Sets the number of Pod replicas to create.
  final int? replicas;
  /// Resource requests for CPU, memory, and ephemeral storage.
  final BuildxBuilderKubernetesRequests? requests;
  /// Run the container as a non-root user.
  final bool? rootless;
  /// Sets the scheduler responsible for scheduling the pod.
  final String? schedulername;
  /// Sets the pod's serviceAccountName.
  final String? serviceaccount;
  /// Set the timeout limit for pod provisioning.
  final String? timeout;
  /// Configures the pod's taint toleration.
  final String? tolerations;

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
  BuildxBuilderKubernetes({
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
      'limits': ?limits == null ? null : limits!.toMap(),
      'loadbalance': ?loadbalance,
      'namespace': ?namespace,
      'nodeselector': ?nodeselector,
      'qemu': ?qemu == null ? null : qemu!.toMap(),
      'replicas': ?replicas,
      'requests': ?requests == null ? null : requests!.toMap(),
      'rootless': ?rootless,
      'schedulername': ?schedulername,
      'serviceaccount': ?serviceaccount,
      'timeout': ?timeout,
      'tolerations': ?tolerations,
    };
  }

  factory BuildxBuilderKubernetes.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderKubernetes(
      annotations: map['annotations'] == null ? null : map['annotations'] as String,
      defaultLoad: map['defaultLoad'] == null ? null : map['defaultLoad'] as bool,
      image: map['image'] == null ? null : map['image'] as String,
      labels: map['labels'] == null ? null : map['labels'] as String,
      limits: map['limits'] == null ? null : BuildxBuilderKubernetesLimits.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      loadbalance: map['loadbalance'] == null ? null : map['loadbalance'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      nodeselector: map['nodeselector'] == null ? null : map['nodeselector'] as String,
      qemu: map['qemu'] == null ? null : BuildxBuilderKubernetesQemu.fromMap((map['qemu'] as Map).cast<String, dynamic>()),
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      requests: map['requests'] == null ? null : BuildxBuilderKubernetesRequests.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      rootless: map['rootless'] == null ? null : map['rootless'] as bool,
      schedulername: map['schedulername'] == null ? null : map['schedulername'] as String,
      serviceaccount: map['serviceaccount'] == null ? null : map['serviceaccount'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      tolerations: map['tolerations'] == null ? null : map['tolerations'] as String,
    );
  }
}

