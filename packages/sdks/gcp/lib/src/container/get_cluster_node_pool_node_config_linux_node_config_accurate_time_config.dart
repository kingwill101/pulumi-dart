// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig {
  /// Whether to enable accurate time synchronization with PTP-KVM.
  final pulumi.Input<bool> enablePtpKvmTimeSync;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig].
  /// [enablePtpKvmTimeSync] Whether to enable accurate time synchronization with PTP-KVM.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig({
    required this.enablePtpKvmTimeSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePtpKvmTimeSync': enablePtpKvmTimeSync,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigAccurateTimeConfig(
      enablePtpKvmTimeSync: pulumi.Input.fromValue(map['enablePtpKvmTimeSync'] as bool),
    );
  }
}
