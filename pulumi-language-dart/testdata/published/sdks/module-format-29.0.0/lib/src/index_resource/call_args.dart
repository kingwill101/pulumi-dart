// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type.dart';

/// {@template pulumi_index_resource_call_args_doc}
/// Arguments for call.
/// {@endtemplate}
/// {@macro pulumi_index_resource_call_args_doc}
class CallArgs {
  final pulumi.Input<ResourceType> self;
  final pulumi.Input<String> input;

  /// Creates a new [CallArgs].
  /// [self] Required.
  /// [input] Required.
  const CallArgs({
    required this.self,
    required this.input,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
      'input': input,
    };
  }

  factory CallArgs.fromMap(Map<String, dynamic> map) {
    return CallArgs(
      self: pulumi.Input.fromValue(map['__self__'] as ResourceType),
      input: pulumi.Input.fromValue(map['input'] as String),
    );
  }
}
