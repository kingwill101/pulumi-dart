// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  DomainDevicesDiskBackingStoreSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkConfig(
      file: (map['file'] as String).input(),
    );
  }
}

