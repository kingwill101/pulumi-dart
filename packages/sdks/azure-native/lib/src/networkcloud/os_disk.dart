// ignore_for_file: unused_element, unnecessary_cast


class OsDisk {
  /// The strategy for creating the OS disk.
  final String? createOption;
  /// The strategy for deleting the OS disk.
  final String? deleteOption;
  /// The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  final double diskSizeGB;

  /// Creates a new [OsDisk].
  /// [createOption] The strategy for creating the OS disk.
  /// [deleteOption] The strategy for deleting the OS disk.
  /// [diskSizeGB] The size of the disk. Required if the createOption is Ephemeral. Allocations are measured in gibibytes.
  OsDisk({
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

  factory OsDisk.fromMap(Map<String, dynamic> map) {
    return OsDisk(
      createOption: map['createOption'] == null ? null : map['createOption'] as String,
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      diskSizeGB: map['diskSizeGB'] as double,
    );
  }
}

