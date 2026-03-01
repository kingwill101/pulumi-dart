// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_ifile_ifile_args_doc}
/// The set of arguments for Ifile.
/// {@endtemplate}
/// {@macro pulumi_sys_ifile_ifile_args_doc}
class IfileArgs {
  /// The content of the iFile. This can be inline text, file content loaded with `file()`, or dynamically generated content. This field is marked as sensitive.
  final pulumi.Input<String> content;
  /// Name of the system iFile to be created on BIG-IP. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Partition where the iFile will be stored. Defaults to `Common`.
  final pulumi.Input<String>? partition;
  /// Subdirectory within the partition for organizing iFiles hierarchically.
  final pulumi.Input<String>? subPath;

  /// Creates a new [IfileArgs].
  /// [content] The content of the iFile. This can be inline text, file content loaded with `file()`, or dynamically generated content. This field is marked as sensitive.
  /// [name] Name of the system iFile to be created on BIG-IP. Changing this forces a new resource to be created.
  /// [partition] Partition where the iFile will be stored. Defaults to `Common`.
  /// [subPath] Subdirectory within the partition for organizing iFiles hierarchically.
  IfileArgs({
    required pulumi.Output<String> content,
    required pulumi.Output<String> name,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? subPath,
  }) :
      content = pulumi.Input.asInput<String>(content),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      subPath = pulumi.Input.asOptionalInput<String>(subPath);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': name,
      'partition': ?partition,
      'subPath': ?subPath,
    };
  }

  factory IfileArgs.fromMap(Map<String, dynamic> map) {
    return IfileArgs(
      content: pulumi.Output.create<String>(map['content'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      subPath: map['subPath'] == null ? null : pulumi.Output.create<String>(map['subPath'] as String),
    );
  }
}

