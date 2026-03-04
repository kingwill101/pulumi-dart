// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsDisk {
  /// The strategy for creating the OS disk.
  final pulumi.Input<String>? createOption;

  /// The strategy for deleting the OS disk.
  final pulumi.Input<String>? deleteOption;

  /// The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  final pulumi.Input<double> diskSizeGB;

  /// Creates a new [OsDisk].
  /// [createOption] The strategy for creating the OS disk.
  /// [deleteOption] The strategy for deleting the OS disk.
  /// [diskSizeGB] The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  OsDisk({this.createOption, this.deleteOption, required this.diskSizeGB});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'deleteOption': ?deleteOption,
      'diskSizeGB': diskSizeGB,
    };
  }

  factory OsDisk.fromMap(Map<String, dynamic> map) {
    return OsDisk(
      createOption: (() {
        final guardedValue = map['createOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteOption: (() {
        final guardedValue = map['deleteOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskSizeGB: pulumi.Input.fromValue(map['diskSizeGB'] as double),
    );
  }
}
