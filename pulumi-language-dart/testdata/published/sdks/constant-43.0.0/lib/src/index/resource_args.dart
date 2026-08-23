// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<String> kind;

  /// Creates a new [ResourceArgs].
  /// [kind] Required.
  const ResourceArgs({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
