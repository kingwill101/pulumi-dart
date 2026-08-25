// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig {
  /// Whether to enable accurate time synchronization with PTP-KVM.
  final pulumi.Input<bool?>? enablePtpKvmTimeSync;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig].
  /// [enablePtpKvmTimeSync] Whether to enable accurate time synchronization with PTP-KVM.
  const ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig({
    this.enablePtpKvmTimeSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePtpKvmTimeSync': ?enablePtpKvmTimeSync,
    };
  }

  factory ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfigAccurateTimeConfig(
      enablePtpKvmTimeSync: (() { final guardedValue = map['enablePtpKvmTimeSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
