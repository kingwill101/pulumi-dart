// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_node_config_os_version_container_v1beta1.dart';

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfigContainerV1beta1 {
  /// OSVersion specifies the Windows node config to be used on the node
  final pulumi.Input<WindowsNodeConfigOsVersionContainerV1beta1>? osVersion;

  /// Creates a new [WindowsNodeConfigContainerV1beta1].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  const WindowsNodeConfigContainerV1beta1({
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osVersion': ?pulumi.Input.mapOptionalInputValue<WindowsNodeConfigOsVersionContainerV1beta1, String>(osVersion, (value) => value.wireValue),
    };
  }

  factory WindowsNodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfigContainerV1beta1(
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsNodeConfigOsVersionContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

