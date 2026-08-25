// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig {
  /// Whether to enable accurate time synchronization with PTP-KVM.
  final pulumi.Input<bool?>? enablePtpKvmTimeSync;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig].
  /// [enablePtpKvmTimeSync] Whether to enable accurate time synchronization with PTP-KVM.
  const ClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig({
    this.enablePtpKvmTimeSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePtpKvmTimeSync': ?enablePtpKvmTimeSync,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig(
      enablePtpKvmTimeSync: (() { final guardedValue = map['enablePtpKvmTimeSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
