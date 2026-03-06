// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceBackupsAutomaticDisk {
  /// The filesystem of this disk.
  final pulumi.Input<String> filesystem;
  /// The label of this disk.
  final pulumi.Input<String> label;
  /// The size of this disk.
  final pulumi.Input<int> size;

  /// Creates a new [GetInstanceBackupsAutomaticDisk].
  /// [filesystem] The filesystem of this disk.
  /// [label] The label of this disk.
  /// [size] The size of this disk.
  const GetInstanceBackupsAutomaticDisk({
    required this.filesystem,
    required this.label,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystem': filesystem,
      'label': label,
      'size': size,
    };
  }

  factory GetInstanceBackupsAutomaticDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsAutomaticDisk(
      filesystem: pulumi.Input.fromValue(map['filesystem'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

