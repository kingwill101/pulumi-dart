// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_archive_resource_args_doc}
/// The set of arguments for ArchiveResource.
/// {@endtemplate}
/// {@macro pulumi_index_archive_resource_args_doc}
class ArchiveResourceArgs {
  final pulumi.Input<dynamic> value;

  /// Creates a new [ArchiveResourceArgs].
  /// [value] Required.
  const ArchiveResourceArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ArchiveResourceArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveResourceArgs(
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}
