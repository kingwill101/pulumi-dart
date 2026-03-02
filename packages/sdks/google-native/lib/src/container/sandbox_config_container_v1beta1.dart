// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sandbox_config_type_container_v1beta1.dart';

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfigContainerV1beta1 {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final pulumi.Input<String>? sandboxType;
  /// Type of the sandbox to use for the node.
  final pulumi.Input<SandboxConfigTypeContainerV1beta1>? type;

  /// Creates a new [SandboxConfigContainerV1beta1].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  /// [type] Type of the sandbox to use for the node.
  SandboxConfigContainerV1beta1({
    this.sandboxType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': ?sandboxType,
      'type': ?pulumi.Input.mapOptionalInputValue<SandboxConfigTypeContainerV1beta1, String>(type, (value) => value.value),
    };
  }

  factory SandboxConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return SandboxConfigContainerV1beta1(
      sandboxType: map['sandboxType'] == null ? null : (map['sandboxType'] as String).input(),
      type: map['type'] == null ? null : (SandboxConfigTypeContainerV1beta1.fromValue(map['type'] as String)).input(),
    );
  }
}

