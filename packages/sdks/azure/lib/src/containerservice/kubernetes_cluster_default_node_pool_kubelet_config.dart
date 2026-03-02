// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterDefaultNodePoolKubeletConfig {
  /// Specifies the allow list of unsafe sysctls command or patterns (ending in `*`).
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;
  /// Specifies the maximum number of container log files that can be present for a container. must be at least 2.
  final pulumi.Input<int>? containerLogMaxLine;
  /// Specifies the maximum size (e.g. 10MB) of container log file before it is rotated.
  final pulumi.Input<int>? containerLogMaxSizeMb;
  /// Is CPU CFS quota enforcement for containers enabled? Defaults to `true`.
  final pulumi.Input<bool>? cpuCfsQuotaEnabled;
  /// Specifies the CPU CFS quota period value.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// Specifies the CPU Manager policy to use. Possible values are `none` and `static`,.
  final pulumi.Input<String>? cpuManagerPolicy;
  /// Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`.
  final pulumi.Input<int>? imageGcHighThreshold;
  /// Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`.
  final pulumi.Input<int>? imageGcLowThreshold;
  /// Specifies the maximum number of processes per pod.
  final pulumi.Input<int>? podMaxPid;
  /// Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`.
  final pulumi.Input<String>? topologyManagerPolicy;

  /// Creates a new [KubernetesClusterDefaultNodePoolKubeletConfig].
  /// [allowedUnsafeSysctls] Specifies the allow list of unsafe sysctls command or patterns (ending in `*`).
  /// [containerLogMaxLine] Specifies the maximum number of container log files that can be present for a container. must be at least 2.
  /// [containerLogMaxSizeMb] Specifies the maximum size (e.g. 10MB) of container log file before it is rotated.
  /// [cpuCfsQuotaEnabled] Is CPU CFS quota enforcement for containers enabled? Defaults to `true`.
  /// [cpuCfsQuotaPeriod] Specifies the CPU CFS quota period value.
  /// [cpuManagerPolicy] Specifies the CPU Manager policy to use. Possible values are `none` and `static`,.
  /// [imageGcHighThreshold] Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`.
  /// [imageGcLowThreshold] Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`.
  /// [podMaxPid] Specifies the maximum number of processes per pod.
  /// [topologyManagerPolicy] Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`.
  KubernetesClusterDefaultNodePoolKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxLine,
    this.containerLogMaxSizeMb,
    this.cpuCfsQuotaEnabled,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.imageGcHighThreshold,
    this.imageGcLowThreshold,
    this.podMaxPid,
    this.topologyManagerPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'containerLogMaxLine': ?containerLogMaxLine,
      'containerLogMaxSizeMb': ?containerLogMaxSizeMb,
      'cpuCfsQuotaEnabled': ?cpuCfsQuotaEnabled,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'imageGcHighThreshold': ?imageGcHighThreshold,
      'imageGcLowThreshold': ?imageGcLowThreshold,
      'podMaxPid': ?podMaxPid,
      'topologyManagerPolicy': ?topologyManagerPolicy,
    };
  }

  factory KubernetesClusterDefaultNodePoolKubeletConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolKubeletConfig(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : ((map['allowedUnsafeSysctls']! as List).cast<String>()).input(),
      containerLogMaxLine: map['containerLogMaxLine'] == null ? null : (map['containerLogMaxLine']! as int).input(),
      containerLogMaxSizeMb: map['containerLogMaxSizeMb'] == null ? null : (map['containerLogMaxSizeMb']! as int).input(),
      cpuCfsQuotaEnabled: map['cpuCfsQuotaEnabled'] == null ? null : (map['cpuCfsQuotaEnabled']! as bool).input(),
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : (map['cpuCfsQuotaPeriod']! as String).input(),
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : (map['cpuManagerPolicy']! as String).input(),
      imageGcHighThreshold: map['imageGcHighThreshold'] == null ? null : (map['imageGcHighThreshold']! as int).input(),
      imageGcLowThreshold: map['imageGcLowThreshold'] == null ? null : (map['imageGcLowThreshold']! as int).input(),
      podMaxPid: map['podMaxPid'] == null ? null : (map['podMaxPid']! as int).input(),
      topologyManagerPolicy: map['topologyManagerPolicy'] == null ? null : (map['topologyManagerPolicy']! as String).input(),
    );
  }
}

