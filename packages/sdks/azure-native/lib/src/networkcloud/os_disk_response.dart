// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsDiskResponse {
  /// The strategy for creating the OS disk.
  final pulumi.Input<String>? createOption;
  /// The strategy for deleting the OS disk.
  final pulumi.Input<String>? deleteOption;
  /// The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  final pulumi.Input<double> diskSizeGB;

  /// Creates a new [OsDiskResponse].
  /// [createOption] The strategy for creating the OS disk.
  /// [deleteOption] The strategy for deleting the OS disk.
  /// [diskSizeGB] The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  OsDiskResponse({
    this.createOption,
    this.deleteOption,
    required this.diskSizeGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'deleteOption': ?deleteOption,
      'diskSizeGB': diskSizeGB,
    };
  }

  factory OsDiskResponse.fromMap(Map<String, dynamic> map) {
    return OsDiskResponse(
      createOption: map['createOption'] == null ? null : (map['createOption']! as String).input(),
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption']! as String).input(),
      diskSizeGB: (map['diskSizeGB'] as double).input(),
    );
  }
}

