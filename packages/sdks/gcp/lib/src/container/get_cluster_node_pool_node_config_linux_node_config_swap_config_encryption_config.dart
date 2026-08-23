// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig {
  /// If true, swap space will not be encrypted. Defaults to false (encrypted).
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig].
  /// [disabled] If true, swap space will not be encrypted. Defaults to false (encrypted).
  const GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
