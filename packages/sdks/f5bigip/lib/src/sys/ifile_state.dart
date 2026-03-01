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
    pulumi.Output<String>? checksum,
    pulumi.Output<String>? content,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partition,
    pulumi.Output<int>? size,
    pulumi.Output<String>? subPath,
  }) :
      checksum = pulumi.Input.asOptionalInput<String>(checksum),
      content = pulumi.Input.asOptionalInput<String>(content),
      name = pulumi.Input.asOptionalInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      size = pulumi.Input.asOptionalInput<int>(size),
      subPath = pulumi.Input.asOptionalInput<String>(subPath);

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
      checksum: map['checksum'] == null ? null : pulumi.Output.create<String>(map['checksum'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      subPath: map['subPath'] == null ? null : pulumi.Output.create<String>(map['subPath'] as String),
    );
  }
}

