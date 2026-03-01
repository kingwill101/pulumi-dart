// ignore_for_file: unused_element, unnecessary_cast


class BuildxBuilderDockerContainer {
  /// Sets the cgroup parent of the container if Docker is using the "cgroupfs" driver.
  final String? cgroupParent;
  /// Sets the CPU CFS scheduler period for the container.
  final String? cpuPeriod;
  /// Imposes a CPU CFS quota on the container.
  final String? cpuQuota;
  /// Configures CPU shares (relative weight) of the container.
  final String? cpuShares;
  /// Limits the set of CPU cores the container can use.
  final String? cpusetCpus;
  /// Limits the set of CPU memory nodes the container can use.
  final String? cpusetMems;
  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final bool? defaultLoad;
  /// Sets environment variables in the container.
  final Map<String, String>? env;
  /// Sets the BuildKit image to use for the container.
  final String? image;
  /// Sets the amount of memory the container can use.
  final String? memory;
  /// Sets the memory swap limit for the container.
  final String? memorySwap;
  /// Sets the network mode for the container.
  final String? network;
  /// Sets the container's restart policy.
  final String? restartPolicy;

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
      cgroupParent: map['cgroupParent'] == null ? null : map['cgroupParent'] as String,
      cpuPeriod: map['cpuPeriod'] == null ? null : map['cpuPeriod'] as String,
      cpuQuota: map['cpuQuota'] == null ? null : map['cpuQuota'] as String,
      cpuShares: map['cpuShares'] == null ? null : map['cpuShares'] as String,
      cpusetCpus: map['cpusetCpus'] == null ? null : map['cpusetCpus'] as String,
      cpusetMems: map['cpusetMems'] == null ? null : map['cpusetMems'] as String,
      defaultLoad: map['defaultLoad'] == null ? null : map['defaultLoad'] as bool,
      env: map['env'] == null ? null : (map['env'] as Map).cast<String, String>(),
      image: map['image'] == null ? null : map['image'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
      memorySwap: map['memorySwap'] == null ? null : map['memorySwap'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy'] as String,
    );
  }
}

