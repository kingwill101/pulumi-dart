// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MemoryLayerMemoryConfig {
  /// (Output)
  /// Reporting the current size of the memory layer in GiB.
  final pulumi.Input<int?>? storageSizeGib;

  /// Creates a new [MemoryLayerMemoryConfig].
  /// [storageSizeGib] (Output)
  const MemoryLayerMemoryConfig({
    this.storageSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSizeGib': ?storageSizeGib,
    };
  }

  factory MemoryLayerMemoryConfig.fromMap(Map<String, dynamic> map) {
    return MemoryLayerMemoryConfig(
      storageSizeGib: (() { final guardedValue = map['storageSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
