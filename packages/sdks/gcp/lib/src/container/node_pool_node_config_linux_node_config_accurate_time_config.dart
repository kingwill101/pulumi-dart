// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig {
  /// Whether to enable accurate time synchronization with PTP-KVM.
  final pulumi.Input<bool?>? enablePtpKvmTimeSync;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig].
  /// [enablePtpKvmTimeSync] Whether to enable accurate time synchronization with PTP-KVM.
  const NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig({
    this.enablePtpKvmTimeSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePtpKvmTimeSync': ?enablePtpKvmTimeSync,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig(
      enablePtpKvmTimeSync: (() { final guardedValue = map['enablePtpKvmTimeSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
