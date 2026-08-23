// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMachineTypesMachineTypeBundledLocalSsd {
  /// (Beta) The default disk interface if the interface is not specified.
  final pulumi.Input<String> defaultInterface;
  /// (Beta) The number of partitions.
  final pulumi.Input<int> partitionCount;

  /// Creates a new [GetMachineTypesMachineTypeBundledLocalSsd].
  /// [defaultInterface] (Beta) The default disk interface if the interface is not specified.
  /// [partitionCount] (Beta) The number of partitions.
  const GetMachineTypesMachineTypeBundledLocalSsd({
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
      defaultInterface: pulumi.Input.fromValue(map['defaultInterface'] as String),
      partitionCount: pulumi.Input.fromValue(map['partitionCount'] as int),
    );
  }
}
