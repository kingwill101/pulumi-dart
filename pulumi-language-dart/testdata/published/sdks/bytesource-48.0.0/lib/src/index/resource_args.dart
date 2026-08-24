// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<String> base64;

  /// Creates a new [ResourceArgs].
  /// [base64] Required.
  const ResourceArgs({
    required this.base64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base64': base64,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      base64: pulumi.Input.fromValue(map['base64'] as String),
    );
  }
}
