// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolKubeletConfig {
  /// Whether or not to enable CPU CFS quota. Defaults to true.
  final pulumi.Input<bool>? cpuCfsQuota;
  /// Optional. The CPU CFS quota period to use for the node. Defaults to "100ms".
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// The CpuManagerPolicy to use for the node. Defaults to "none".
  final pulumi.Input<String>? cpuManagerPolicy;
  /// Optional. The maximum number of PIDs in each pod running on the node. The limit scales automatically based on underlying machine size if left unset.
  final pulumi.Input<int>? podPidsLimit;

  /// Creates a new [AwsNodePoolKubeletConfig].
  /// [cpuCfsQuota] Whether or not to enable CPU CFS quota. Defaults to true.
  /// [cpuCfsQuotaPeriod] Optional. The CPU CFS quota period to use for the node. Defaults to "100ms".
  /// [cpuManagerPolicy] The CpuManagerPolicy to use for the node. Defaults to "none".
  /// [podPidsLimit] Optional. The maximum number of PIDs in each pod running on the node. The limit scales automatically based on underlying machine size if left unset.
  AwsNodePoolKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.podPidsLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'podPidsLimit': ?podPidsLimit,
    };
  }

  factory AwsNodePoolKubeletConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolKubeletConfig(
      cpuCfsQuota: map['cpuCfsQuota'] == null ? null : (map['cpuCfsQuota']! as bool).input(),
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : (map['cpuCfsQuotaPeriod']! as String).input(),
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : (map['cpuManagerPolicy']! as String).input(),
      podPidsLimit: map['podPidsLimit'] == null ? null : (map['podPidsLimit']! as int).input(),
    );
  }
}

