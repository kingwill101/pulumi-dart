// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainOsNvRamSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  DomainOsNvRamSourceVhostVdpa({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainOsNvRamSourceVhostVdpa.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostVdpa(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}

