// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ifile resources.
class IfileState {
  /// MD5 checksum of the iFile content, automatically calculated by BIG-IP.
  final pulumi.Input<String>? checksum;
  /// The content of the iFile. This can be inline text, file content loaded with `file()`, or dynamically generated content. This field is marked as sensitive.
  final pulumi.Input<String>? content;
  /// Name of the system iFile to be created on BIG-IP. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Partition where the iFile will be stored. Defaults to `Common`.
  final pulumi.Input<String>? partition;
  /// Size of the iFile content in bytes.
  final pulumi.Input<int>? size;
  /// Subdirectory within the partition for organizing iFiles hierarchically.
  final pulumi.Input<String>? subPath;

  /// Creates a new [IfileState].
  /// [checksum] MD5 checksum of the iFile content, automatically calculated by BIG-IP.
  /// [content] The content of the iFile. This can be inline text, file content loaded with `file()`, or dynamically generated content. This field is marked as sensitive.
  /// [name] Name of the system iFile to be created on BIG-IP. Changing this forces a new resource to be created.
  /// [partition] Partition where the iFile will be stored. Defaults to `Common`.
  /// [size] Size of the iFile content in bytes.
  /// [subPath] Subdirectory within the partition for organizing iFiles hierarchically.
  IfileState({
    this.checksum,
    this.content,
    this.name,
    this.partition,
    this.size,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'content': ?content,
      'name': ?name,
      'partition': ?partition,
      'size': ?size,
      'subPath': ?subPath,
    };
  }

  factory IfileState.fromMap(Map<String, dynamic> map) {
    return IfileState(
      checksum: map['checksum'] == null ? null : (map['checksum']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      subPath: map['subPath'] == null ? null : (map['subPath']! as String).input(),
    );
  }
}

