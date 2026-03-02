// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceBackupsInProgressDisk {
  /// The filesystem of this disk.
  final pulumi.Input<String> filesystem;
  /// The label of this disk.
  final pulumi.Input<String> label;
  /// The size of this disk.
  final pulumi.Input<int> size;

  /// Creates a new [GetInstanceBackupsInProgressDisk].
  /// [filesystem] The filesystem of this disk.
  /// [label] The label of this disk.
  /// [size] The size of this disk.
  GetInstanceBackupsInProgressDisk({
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

  factory GetInstanceBackupsInProgressDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsInProgressDisk(
      filesystem: (map['filesystem'] as String).input(),
      label: (map['label'] as String).input(),
      size: (map['size'] as int).input(),
    );
  }
}

