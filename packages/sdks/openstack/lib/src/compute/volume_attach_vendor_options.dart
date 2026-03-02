// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeAttachVendorOptions {
  /// Boolean to control whether
  /// to ignore volume status confirmation of the attached volume. This can be helpful
  /// to work with some OpenStack clouds which don't have the Block Storage V3 API available.
  final pulumi.Input<bool>? ignoreVolumeConfirmation;

  /// Creates a new [VolumeAttachVendorOptions].
  /// [ignoreVolumeConfirmation] Boolean to control whether
  VolumeAttachVendorOptions({
    this.ignoreVolumeConfirmation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreVolumeConfirmation': ?ignoreVolumeConfirmation,
    };
  }

  factory VolumeAttachVendorOptions.fromMap(Map<String, dynamic> map) {
    return VolumeAttachVendorOptions(
      ignoreVolumeConfirmation: map['ignoreVolumeConfirmation'] == null ? null : (map['ignoreVolumeConfirmation']! as bool).input(),
    );
  }
}

