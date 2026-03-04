// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  DomainDevicesDiskMirrorSourceNetworkConfig({required this.file});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'file': file};
  }

  factory DomainDevicesDiskMirrorSourceNetworkConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorSourceNetworkConfig(
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}
