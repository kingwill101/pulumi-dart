// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_block_sec_label.dart';

class DomainOsNvRamSourceBlock {
  /// Sets the device path for the block source of the backing store, defining the physical location of the data.
  final pulumi.Input<String>? dev;
  /// Specifies security label settings for the block source in the backing store, managing access controls.
  final pulumi.Input<List<DomainOsNvRamSourceBlockSecLabel>>? secLabels;

  /// Creates a new [DomainOsNvRamSourceBlock].
  /// [dev] Sets the device path for the block source of the backing store, defining the physical location of the data.
  /// [secLabels] Specifies security label settings for the block source in the backing store, managing access controls.
  DomainOsNvRamSourceBlock({
    this.dev,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceBlockSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceBlockSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceBlock(
      dev: map['dev'] == null ? null : (map['dev']! as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainOsNvRamSourceBlockSecLabel>(map['secLabels']!, (value) => DomainOsNvRamSourceBlockSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

