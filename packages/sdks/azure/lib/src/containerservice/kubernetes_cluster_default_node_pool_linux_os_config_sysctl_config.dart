// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterDefaultNodePoolLinuxOsConfigSysctlConfig {
  /// The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`.
  final pulumi.Input<int?>? fsAioMaxNr;
  /// The sysctl setting fs.file-max. Must be between `8192` and `12000500`.
  final pulumi.Input<int?>? fsFileMax;
  /// The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`.
  final pulumi.Input<int?>? fsInotifyMaxUserWatches;
  /// The sysctl setting fs.nr_open. Must be between `8192` and `20000500`.
  final pulumi.Input<int?>? fsNrOpen;
  /// The sysctl setting kernel.threads-max. Must be between `20` and `513785`.
  final pulumi.Input<int?>? kernelThreadsMax;
  /// The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`.
  final pulumi.Input<int?>? netCoreNetdevMaxBacklog;
  /// The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`.
  final pulumi.Input<int?>? netCoreOptmemMax;
  /// The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`.
  final pulumi.Input<int?>? netCoreRmemDefault;
  /// The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`.
  final pulumi.Input<int?>? netCoreRmemMax;
  /// The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`.
  final pulumi.Input<int?>? netCoreSomaxconn;
  /// The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`.
  final pulumi.Input<int?>? netCoreWmemDefault;
  /// The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`.
  final pulumi.Input<int?>? netCoreWmemMax;
  /// The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `32768` and `65535`.
  final pulumi.Input<int?>? netIpv4IpLocalPortRangeMax;
  /// The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`.
  final pulumi.Input<int?>? netIpv4IpLocalPortRangeMin;
  /// The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`.
  final pulumi.Input<int?>? netIpv4NeighDefaultGcThresh1;
  /// The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`.
  final pulumi.Input<int?>? netIpv4NeighDefaultGcThresh2;
  /// The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`.
  final pulumi.Input<int?>? netIpv4NeighDefaultGcThresh3;
  /// The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`.
  final pulumi.Input<int?>? netIpv4TcpFinTimeout;
  /// The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `90`.
  final pulumi.Input<int?>? netIpv4TcpKeepaliveIntvl;
  /// The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`.
  final pulumi.Input<int?>? netIpv4TcpKeepaliveProbes;
  /// The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`.
  final pulumi.Input<int?>? netIpv4TcpKeepaliveTime;
  /// The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`.
  final pulumi.Input<int?>? netIpv4TcpMaxSynBacklog;
  /// The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`.
  final pulumi.Input<int?>? netIpv4TcpMaxTwBuckets;
  /// The sysctl setting net.ipv4.tcp_tw_reuse.
  final pulumi.Input<bool?>? netIpv4TcpTwReuse;
  /// The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `524288`.
  final pulumi.Input<int?>? netNetfilterNfConntrackBuckets;
  /// The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `2097152`.
  final pulumi.Input<int?>? netNetfilterNfConntrackMax;
  /// The sysctl setting vm.max_map_count. Must be between `65530` and `262144`.
  final pulumi.Input<int?>? vmMaxMapCount;
  /// The sysctl setting vm.swappiness. Must be between `0` and `100`.
  final pulumi.Input<int?>? vmSwappiness;
  /// The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`.
  final pulumi.Input<int?>? vmVfsCachePressure;

  /// Creates a new [KubernetesClusterDefaultNodePoolLinuxOsConfigSysctlConfig].
  /// [fsAioMaxNr] The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`.
  /// [fsFileMax] The sysctl setting fs.file-max. Must be between `8192` and `12000500`.
  /// [fsInotifyMaxUserWatches] The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`.
  /// [fsNrOpen] The sysctl setting fs.nr_open. Must be between `8192` and `20000500`.
  /// [kernelThreadsMax] The sysctl setting kernel.threads-max. Must be between `20` and `513785`.
  /// [netCoreNetdevMaxBacklog] The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`.
  /// [netCoreOptmemMax] The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`.
  /// [netCoreRmemDefault] The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`.
  /// [netCoreRmemMax] The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`.
  /// [netCoreSomaxconn] The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`.
  /// [netCoreWmemDefault] The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`.
  /// [netCoreWmemMax] The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`.
  /// [netIpv4IpLocalPortRangeMax] The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `32768` and `65535`.
  /// [netIpv4IpLocalPortRangeMin] The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`.
  /// [netIpv4NeighDefaultGcThresh1] The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`.
  /// [netIpv4NeighDefaultGcThresh2] The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`.
  /// [netIpv4NeighDefaultGcThresh3] The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`.
  /// [netIpv4TcpFinTimeout] The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`.
  /// [netIpv4TcpKeepaliveIntvl] The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `90`.
  /// [netIpv4TcpKeepaliveProbes] The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`.
  /// [netIpv4TcpKeepaliveTime] The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`.
  /// [netIpv4TcpMaxSynBacklog] The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`.
  /// [netIpv4TcpMaxTwBuckets] The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`.
  /// [netIpv4TcpTwReuse] The sysctl setting net.ipv4.tcp_tw_reuse.
  /// [netNetfilterNfConntrackBuckets] The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `524288`.
  /// [netNetfilterNfConntrackMax] The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `2097152`.
  /// [vmMaxMapCount] The sysctl setting vm.max_map_count. Must be between `65530` and `262144`.
  /// [vmSwappiness] The sysctl setting vm.swappiness. Must be between `0` and `100`.
  /// [vmVfsCachePressure] The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`.
  const KubernetesClusterDefaultNodePoolLinuxOsConfigSysctlConfig({
    this.fsAioMaxNr,
    this.fsFileMax,
    this.fsInotifyMaxUserWatches,
    this.fsNrOpen,
    this.kernelThreadsMax,
    this.netCoreNetdevMaxBacklog,
    this.netCoreOptmemMax,
    this.netCoreRmemDefault,
    this.netCoreRmemMax,
    this.netCoreSomaxconn,
    this.netCoreWmemDefault,
    this.netCoreWmemMax,
    this.netIpv4IpLocalPortRangeMax,
    this.netIpv4IpLocalPortRangeMin,
    this.netIpv4NeighDefaultGcThresh1,
    this.netIpv4NeighDefaultGcThresh2,
    this.netIpv4NeighDefaultGcThresh3,
    this.netIpv4TcpFinTimeout,
    this.netIpv4TcpKeepaliveIntvl,
    this.netIpv4TcpKeepaliveProbes,
    this.netIpv4TcpKeepaliveTime,
    this.netIpv4TcpMaxSynBacklog,
    this.netIpv4TcpMaxTwBuckets,
    this.netIpv4TcpTwReuse,
    this.netNetfilterNfConntrackBuckets,
    this.netNetfilterNfConntrackMax,
    this.vmMaxMapCount,
    this.vmSwappiness,
    this.vmVfsCachePressure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsAioMaxNr': ?fsAioMaxNr,
      'fsFileMax': ?fsFileMax,
      'fsInotifyMaxUserWatches': ?fsInotifyMaxUserWatches,
      'fsNrOpen': ?fsNrOpen,
      'kernelThreadsMax': ?kernelThreadsMax,
      'netCoreNetdevMaxBacklog': ?netCoreNetdevMaxBacklog,
      'netCoreOptmemMax': ?netCoreOptmemMax,
      'netCoreRmemDefault': ?netCoreRmemDefault,
      'netCoreRmemMax': ?netCoreRmemMax,
      'netCoreSomaxconn': ?netCoreSomaxconn,
      'netCoreWmemDefault': ?netCoreWmemDefault,
      'netCoreWmemMax': ?netCoreWmemMax,
      'netIpv4IpLocalPortRangeMax': ?netIpv4IpLocalPortRangeMax,
      'netIpv4IpLocalPortRangeMin': ?netIpv4IpLocalPortRangeMin,
      'netIpv4NeighDefaultGcThresh1': ?netIpv4NeighDefaultGcThresh1,
      'netIpv4NeighDefaultGcThresh2': ?netIpv4NeighDefaultGcThresh2,
      'netIpv4NeighDefaultGcThresh3': ?netIpv4NeighDefaultGcThresh3,
      'netIpv4TcpFinTimeout': ?netIpv4TcpFinTimeout,
      'netIpv4TcpKeepaliveIntvl': ?netIpv4TcpKeepaliveIntvl,
      'netIpv4TcpKeepaliveProbes': ?netIpv4TcpKeepaliveProbes,
      'netIpv4TcpKeepaliveTime': ?netIpv4TcpKeepaliveTime,
      'netIpv4TcpMaxSynBacklog': ?netIpv4TcpMaxSynBacklog,
      'netIpv4TcpMaxTwBuckets': ?netIpv4TcpMaxTwBuckets,
      'netIpv4TcpTwReuse': ?netIpv4TcpTwReuse,
      'netNetfilterNfConntrackBuckets': ?netNetfilterNfConntrackBuckets,
      'netNetfilterNfConntrackMax': ?netNetfilterNfConntrackMax,
      'vmMaxMapCount': ?vmMaxMapCount,
      'vmSwappiness': ?vmSwappiness,
      'vmVfsCachePressure': ?vmVfsCachePressure,
    };
  }

  factory KubernetesClusterDefaultNodePoolLinuxOsConfigSysctlConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolLinuxOsConfigSysctlConfig(
      fsAioMaxNr: (() { final guardedValue = map['fsAioMaxNr']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fsFileMax: (() { final guardedValue = map['fsFileMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fsInotifyMaxUserWatches: (() { final guardedValue = map['fsInotifyMaxUserWatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fsNrOpen: (() { final guardedValue = map['fsNrOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      kernelThreadsMax: (() { final guardedValue = map['kernelThreadsMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreNetdevMaxBacklog: (() { final guardedValue = map['netCoreNetdevMaxBacklog']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreOptmemMax: (() { final guardedValue = map['netCoreOptmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreRmemDefault: (() { final guardedValue = map['netCoreRmemDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreRmemMax: (() { final guardedValue = map['netCoreRmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreSomaxconn: (() { final guardedValue = map['netCoreSomaxconn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreWmemDefault: (() { final guardedValue = map['netCoreWmemDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netCoreWmemMax: (() { final guardedValue = map['netCoreWmemMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4IpLocalPortRangeMax: (() { final guardedValue = map['netIpv4IpLocalPortRangeMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4IpLocalPortRangeMin: (() { final guardedValue = map['netIpv4IpLocalPortRangeMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4NeighDefaultGcThresh1: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4NeighDefaultGcThresh2: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4NeighDefaultGcThresh3: (() { final guardedValue = map['netIpv4NeighDefaultGcThresh3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpFinTimeout: (() { final guardedValue = map['netIpv4TcpFinTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpKeepaliveIntvl: (() { final guardedValue = map['netIpv4TcpKeepaliveIntvl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpKeepaliveProbes: (() { final guardedValue = map['netIpv4TcpKeepaliveProbes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpKeepaliveTime: (() { final guardedValue = map['netIpv4TcpKeepaliveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpMaxSynBacklog: (() { final guardedValue = map['netIpv4TcpMaxSynBacklog']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpMaxTwBuckets: (() { final guardedValue = map['netIpv4TcpMaxTwBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netIpv4TcpTwReuse: (() { final guardedValue = map['netIpv4TcpTwReuse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      netNetfilterNfConntrackBuckets: (() { final guardedValue = map['netNetfilterNfConntrackBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      netNetfilterNfConntrackMax: (() { final guardedValue = map['netNetfilterNfConntrackMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vmMaxMapCount: (() { final guardedValue = map['vmMaxMapCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vmSwappiness: (() { final guardedValue = map['vmSwappiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vmVfsCachePressure: (() { final guardedValue = map['vmVfsCachePressure']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
