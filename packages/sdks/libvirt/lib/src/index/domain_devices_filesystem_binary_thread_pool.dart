// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemBinaryThreadPool {
  /// Specifies the number of threads in the thread pool for the binary filesystem.
  final pulumi.Input<double>? size;

  /// Creates a new [DomainDevicesFilesystemBinaryThreadPool].
  /// [size] Specifies the number of threads in the thread pool for the binary filesystem.
  DomainDevicesFilesystemBinaryThreadPool({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory DomainDevicesFilesystemBinaryThreadPool.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryThreadPool(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

