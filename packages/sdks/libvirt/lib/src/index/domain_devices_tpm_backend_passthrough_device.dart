// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendPassthroughDevice {
  /// Specifies the path to the TPM device that is being passed through to the guest.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesTpmBackendPassthroughDevice].
  /// [path] Specifies the path to the TPM device that is being passed through to the guest.
  const DomainDevicesTpmBackendPassthroughDevice({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesTpmBackendPassthroughDevice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendPassthroughDevice(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

