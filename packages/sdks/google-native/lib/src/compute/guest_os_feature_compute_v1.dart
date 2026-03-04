// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_os_feature_type_compute_v1.dart';

/// Guest OS features.
class GuestOsFeatureComputeV1 {
  /// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  final pulumi.Input<GuestOsFeatureTypeComputeV1>? type;

  /// Creates a new [GuestOsFeatureComputeV1].
  /// [type] The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  GuestOsFeatureComputeV1({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            GuestOsFeatureTypeComputeV1,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory GuestOsFeatureComputeV1.fromMap(Map<String, dynamic> map) {
    return GuestOsFeatureComputeV1(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GuestOsFeatureTypeComputeV1.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
