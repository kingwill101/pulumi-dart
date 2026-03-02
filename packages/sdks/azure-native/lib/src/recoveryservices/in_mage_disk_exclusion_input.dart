// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_disk_signature_exclusion_options.dart';
import 'in_mage_volume_exclusion_options.dart';

/// DiskExclusionInput when doing enable protection of virtual machine in InMage provider.
class InMageDiskExclusionInput {
  /// The guest disk signature based option for disk exclusion.
  final pulumi.Input<List<InMageDiskSignatureExclusionOptions>>? diskSignatureOptions;
  /// The volume label based option for disk exclusion.
  final pulumi.Input<List<InMageVolumeExclusionOptions>>? volumeOptions;

  /// Creates a new [InMageDiskExclusionInput].
  /// [diskSignatureOptions] The guest disk signature based option for disk exclusion.
  /// [volumeOptions] The volume label based option for disk exclusion.
  InMageDiskExclusionInput({
    this.diskSignatureOptions,
    this.volumeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSignatureOptions': ?pulumi.Input.mapOptionalInputValue<List<InMageDiskSignatureExclusionOptions>, List<Map<String, dynamic>>>(diskSignatureOptions, (value) => pulumi.Input.encodeList<InMageDiskSignatureExclusionOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeOptions': ?pulumi.Input.mapOptionalInputValue<List<InMageVolumeExclusionOptions>, List<Map<String, dynamic>>>(volumeOptions, (value) => pulumi.Input.encodeList<InMageVolumeExclusionOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InMageDiskExclusionInput.fromMap(Map<String, dynamic> map) {
    return InMageDiskExclusionInput(
      diskSignatureOptions: map['diskSignatureOptions'] == null ? null : (pulumi.Input.decodeList<InMageDiskSignatureExclusionOptions>(map['diskSignatureOptions'], (value) => InMageDiskSignatureExclusionOptions.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeOptions: map['volumeOptions'] == null ? null : (pulumi.Input.decodeList<InMageVolumeExclusionOptions>(map['volumeOptions'], (value) => InMageVolumeExclusionOptions.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

