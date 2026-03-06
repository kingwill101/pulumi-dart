// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceNetworkConfig {
  /// Specifies a file for loading additional network configuration in the backing store source.
  final pulumi.Input<String> file;

  /// Creates a new [DomainOsNvRamSourceNetworkConfig].
  /// [file] Specifies a file for loading additional network configuration in the backing store source.
  const DomainOsNvRamSourceNetworkConfig({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainOsNvRamSourceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkConfig(
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}

