// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig {
  /// If true, swap space will not be encrypted. Defaults to false (encrypted).
  final pulumi.Input<bool>? disabled;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig].
  /// [disabled] If true, swap space will not be encrypted. Defaults to false (encrypted).
  const ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
