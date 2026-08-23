// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_mine_concat_world_index_mine_args_doc}
/// Arguments for concatWorld.
/// {@endtemplate}
/// {@macro pulumi_index_mine_concat_world_index_mine_args_doc}
class ConcatWorldIndexMineArgs {
  final pulumi.Input<String> value;

  /// Creates a new [ConcatWorldIndexMineArgs].
  /// [value] Required.
  const ConcatWorldIndexMineArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ConcatWorldIndexMineArgs.fromMap(Map<String, dynamic> map) {
    return ConcatWorldIndexMineArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
