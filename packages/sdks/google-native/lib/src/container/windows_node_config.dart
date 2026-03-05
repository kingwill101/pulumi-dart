// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_node_config_os_version.dart';

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfig {
  /// OSVersion specifies the Windows node config to be used on the node
  final pulumi.Input<WindowsNodeConfigOsVersion>? osVersion;

  /// Creates a new [WindowsNodeConfig].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  WindowsNodeConfig({
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osVersion': ?pulumi.Input.mapOptionalInputValue<WindowsNodeConfigOsVersion, String>(osVersion, (value) => value.wireValue),
    };
  }

  factory WindowsNodeConfig.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfig(
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsNodeConfigOsVersion.fromValue(guardedValue as String)); })(),
    );
  }
}

