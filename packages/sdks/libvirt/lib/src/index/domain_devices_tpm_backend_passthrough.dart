// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_passthrough_device.dart';

class DomainDevicesTpmBackendPassthrough {
  /// Sets parameters for the passthrough device associated with the TPM.
  final pulumi.Input<DomainDevicesTpmBackendPassthroughDevice>? device;

  /// Creates a new [DomainDevicesTpmBackendPassthrough].
  /// [device] Sets parameters for the passthrough device associated with the TPM.
  DomainDevicesTpmBackendPassthrough({
    this.device,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendPassthroughDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendPassthrough.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendPassthrough(
      device: map['device'] == null ? null : (DomainDevicesTpmBackendPassthroughDevice.fromMap((map['device']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

