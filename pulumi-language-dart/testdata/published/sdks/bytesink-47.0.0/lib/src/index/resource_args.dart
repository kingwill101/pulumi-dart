// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<String> bytes;
  final pulumi.Input<String> expectBase64;

  /// Creates a new [ResourceArgs].
  /// [bytes] Required.
  /// [expectBase64] Required.
  const ResourceArgs({
    required this.bytes,
    required this.expectBase64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': bytes,
      'expectBase64': expectBase64,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      bytes: pulumi.Input.fromValue(map['bytes'] as String),
      expectBase64: pulumi.Input.fromValue(map['expectBase64'] as String),
    );
  }
}
