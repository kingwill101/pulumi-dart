// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings
class WindowsNodeConfigResponseContainerV1beta1 {
  /// OSVersion specifies the Windows node config to be used on the node
  final pulumi.Input<String> osVersion;

  /// Creates a new [WindowsNodeConfigResponseContainerV1beta1].
  /// [osVersion] OSVersion specifies the Windows node config to be used on the node
  const WindowsNodeConfigResponseContainerV1beta1({
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osVersion': osVersion,
    };
  }

  factory WindowsNodeConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WindowsNodeConfigResponseContainerV1beta1(
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
    );
  }
}

