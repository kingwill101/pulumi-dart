// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig {
  /// If true, swap space will not be encrypted. Defaults to false (encrypted).
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig].
  /// [disabled] If true, swap space will not be encrypted. Defaults to false (encrypted).
  const GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
