// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_mine_resource_call_index_mine_args_doc}
/// Arguments for Resource.call.
/// {@endtemplate}
/// {@macro pulumi_index_mine_resource_call_index_mine_args_doc}
class ResourceCallIndexMineArgs {
  final pulumi.Input<String> input;

  /// Creates a new [ResourceCallIndexMineArgs].
  /// [input] Required.
  const ResourceCallIndexMineArgs({
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': input,
    };
  }

  factory ResourceCallIndexMineArgs.fromMap(Map<String, dynamic> map) {
    return ResourceCallIndexMineArgs(
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
