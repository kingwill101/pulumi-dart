// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceBackupsInProgressDisk {
  /// The filesystem of this disk.
  final String filesystem;
  /// The label of this disk.
  final String label;
  /// The size of this disk.
  final int size;

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
      filesystem: map['filesystem'] as String,
      label: map['label'] as String,
      size: map['size'] as int,
    );
  }
}

