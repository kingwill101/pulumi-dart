// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMachineTypesMachineTypeBundledLocalSsd {
  /// The default disk interface if the interface is not specified.
  final pulumi.Input<String> defaultInterface;
  /// The number of partitions.
  final pulumi.Input<int> partitionCount;

  /// Creates a new [GetMachineTypesMachineTypeBundledLocalSsd].
  /// [defaultInterface] The default disk interface if the interface is not specified.
  /// [partitionCount] The number of partitions.
  GetMachineTypesMachineTypeBundledLocalSsd({
    required this.defaultInterface,
    required this.partitionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultInterface': defaultInterface,
      'partitionCount': partitionCount,
    };
  }

  factory GetMachineTypesMachineTypeBundledLocalSsd.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeBundledLocalSsd(
      defaultInterface: (map['defaultInterface'] as String).input(),
      partitionCount: (map['partitionCount'] as int).input(),
    );
  }
}

