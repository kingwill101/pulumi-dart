// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemBinaryCache {
  /// Sets the mode for the cache used by the binary filesystem device.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesFilesystemBinaryCache].
  /// [mode] Sets the mode for the cache used by the binary filesystem device.
  DomainDevicesFilesystemBinaryCache({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesFilesystemBinaryCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryCache(
      mode: (map['mode'] as String).input(),
    );
  }
}

