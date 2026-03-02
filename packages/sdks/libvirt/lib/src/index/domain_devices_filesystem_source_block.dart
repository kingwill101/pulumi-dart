// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceBlock {
  /// Sets the block device path for the filesystem source.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesFilesystemSourceBlock].
  /// [dev] Sets the block device path for the filesystem source.
  DomainDevicesFilesystemSourceBlock({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainDevicesFilesystemSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceBlock(
      dev: (map['dev'] as String).input(),
    );
  }
}

