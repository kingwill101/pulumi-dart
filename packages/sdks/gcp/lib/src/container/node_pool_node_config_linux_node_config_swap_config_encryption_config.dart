// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig {
  /// If true, swap space will not be encrypted. Defaults to false (encrypted).
  final pulumi.Input<bool?>? disabled;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig].
  /// [disabled] If true, swap space will not be encrypted. Defaults to false (encrypted).
  const NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
