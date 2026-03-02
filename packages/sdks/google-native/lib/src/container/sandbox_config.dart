// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sandbox_config_type.dart';

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfig {
  /// Type of the sandbox to use for the node.
  final pulumi.Input<SandboxConfigType>? type;

  /// Creates a new [SandboxConfig].
  /// [type] Type of the sandbox to use for the node.
  SandboxConfig({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<SandboxConfigType, String>(type, (value) => value.value),
    };
  }

  factory SandboxConfig.fromMap(Map<String, dynamic> map) {
    return SandboxConfig(
      type: map['type'] == null ? null : (SandboxConfigType.fromValue(map['type']! as String)).input(),
    );
  }
}

