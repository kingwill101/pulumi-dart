// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig {
  /// Whether to enable accurate time synchronization with PTP-KVM.
  final pulumi.Input<bool> enablePtpKvmTimeSync;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig].
  /// [enablePtpKvmTimeSync] Whether to enable accurate time synchronization with PTP-KVM.
  const GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig({
    required this.enablePtpKvmTimeSync,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePtpKvmTimeSync': enablePtpKvmTimeSync,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigAccurateTimeConfig(
      enablePtpKvmTimeSync: pulumi.Input.fromValue(map['enablePtpKvmTimeSync'] as bool),
    );
  }
}
