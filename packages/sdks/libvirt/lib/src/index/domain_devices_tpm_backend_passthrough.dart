// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_backend_passthrough_device.dart';

class DomainDevicesTpmBackendPassthrough {
  /// Sets parameters for the passthrough device associated with the TPM.
  final DomainDevicesTpmBackendPassthroughDevice? device;

  /// Creates a new [DomainDevicesTpmBackendPassthrough].
  /// [device] Sets parameters for the passthrough device associated with the TPM.
  DomainDevicesTpmBackendPassthrough({
    this.device,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?device == null ? null : device!.toMap(),
    };
  }

  factory DomainDevicesTpmBackendPassthrough.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendPassthrough(
      device: map['device'] == null ? null : DomainDevicesTpmBackendPassthroughDevice.fromMap((map['device'] as Map).cast<String, dynamic>()),
    );
  }
}

