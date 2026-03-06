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
  const IfileArgs({
    required this.content,
    required this.name,
    this.partition,
    this.subPath,
  });

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
      content: pulumi.Input.fromValue(map['content'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

