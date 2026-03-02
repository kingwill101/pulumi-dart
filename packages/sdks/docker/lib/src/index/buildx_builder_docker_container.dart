// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildxBuilderDockerContainer {
  /// Sets the cgroup parent of the container if Docker is using the "cgroupfs" driver.
  final pulumi.Input<String>? cgroupParent;
  /// Sets the CPU CFS scheduler period for the container.
  final pulumi.Input<String>? cpuPeriod;
  /// Imposes a CPU CFS quota on the container.
  final pulumi.Input<String>? cpuQuota;
  /// Configures CPU shares (relative weight) of the container.
  final pulumi.Input<String>? cpuShares;
  /// Limits the set of CPU cores the container can use.
  final pulumi.Input<String>? cpusetCpus;
  /// Limits the set of CPU memory nodes the container can use.
  final pulumi.Input<String>? cpusetMems;
  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final pulumi.Input<bool>? defaultLoad;
  /// Sets environment variables in the container.
  final pulumi.Input<Map<String, String>>? env;
  /// Sets the BuildKit image to use for the container.
  final pulumi.Input<String>? image;
  /// Sets the amount of memory the container can use.
  final pulumi.Input<String>? memory;
  /// Sets the memory swap limit for the container.
  final pulumi.Input<String>? memorySwap;
  /// Sets the network mode for the container.
  final pulumi.Input<String>? network;
  /// Sets the container's restart policy.
  final pulumi.Input<String>? restartPolicy;

  /// Creates a new [BuildxBuilderDockerContainer].
  /// [cgroupParent] Sets the cgroup parent of the container if Docker is using the "cgroupfs" driver.
  /// [cpuPeriod] Sets the CPU CFS scheduler period for the container.
  /// [cpuQuota] Imposes a CPU CFS quota on the container.
  /// [cpuShares] Configures CPU shares (relative weight) of the container.
  /// [cpusetCpus] Limits the set of CPU cores the container can use.
  /// [cpusetMems] Limits the set of CPU memory nodes the container can use.
  /// [defaultLoad] Automatically load images to the Docker Engine image store. Defaults to `false`
  /// [env] Sets environment variables in the container.
  /// [image] Sets the BuildKit image to use for the container.
  /// [memory] Sets the amount of memory the container can use.
  /// [memorySwap] Sets the memory swap limit for the container.
  /// [network] Sets the network mode for the container.
  /// [restartPolicy] Sets the container's restart policy.
  BuildxBuilderDockerContainer({
    this.cgroupParent,
    this.cpuPeriod,
    this.cpuQuota,
    this.cpuShares,
    this.cpusetCpus,
    this.cpusetMems,
    this.defaultLoad,
    this.env,
    this.image,
    this.memory,
    this.memorySwap,
    this.network,
    this.restartPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgroupParent': ?cgroupParent,
      'cpuPeriod': ?cpuPeriod,
      'cpuQuota': ?cpuQuota,
      'cpuShares': ?cpuShares,
      'cpusetCpus': ?cpusetCpus,
      'cpusetMems': ?cpusetMems,
      'defaultLoad': ?defaultLoad,
      'env': ?env,
      'image': ?image,
      'memory': ?memory,
      'memorySwap': ?memorySwap,
      'network': ?network,
      'restartPolicy': ?restartPolicy,
    };
  }

  factory BuildxBuilderDockerContainer.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderDockerContainer(
      cgroupParent: map['cgroupParent'] == null ? null : (map['cgroupParent'] as String).input(),
      cpuPeriod: map['cpuPeriod'] == null ? null : (map['cpuPeriod'] as String).input(),
      cpuQuota: map['cpuQuota'] == null ? null : (map['cpuQuota'] as String).input(),
      cpuShares: map['cpuShares'] == null ? null : (map['cpuShares'] as String).input(),
      cpusetCpus: map['cpusetCpus'] == null ? null : (map['cpusetCpus'] as String).input(),
      cpusetMems: map['cpusetMems'] == null ? null : (map['cpusetMems'] as String).input(),
      defaultLoad: map['defaultLoad'] == null ? null : (map['defaultLoad'] as bool).input(),
      env: map['env'] == null ? null : ((map['env'] as Map).cast<String, String>()).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
      memorySwap: map['memorySwap'] == null ? null : (map['memorySwap'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (map['restartPolicy'] as String).input(),
    );
  }
}

