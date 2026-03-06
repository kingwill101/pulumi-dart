// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  const DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig(
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}

