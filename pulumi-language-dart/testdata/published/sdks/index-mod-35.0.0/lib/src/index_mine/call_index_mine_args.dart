// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_mine_call_index_mine_args_doc}
/// Arguments for call.
/// {@endtemplate}
/// {@macro pulumi_index_mine_call_index_mine_args_doc}
class CallIndexMineArgs {
  final pulumi.Input<pulumi.CustomResource> self;
  final pulumi.Input<String> input;

  /// Creates a new [CallIndexMineArgs].
  /// [self] Required.
  /// [input] Required.
  const CallIndexMineArgs({
    required this.self,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
      'input': input,
    };
  }

  factory CallIndexMineArgs.fromMap(Map<String, dynamic> map) {
    return CallIndexMineArgs(
      self: pulumi.Input.fromValue(map['__self__'] as pulumi.CustomResource),
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
