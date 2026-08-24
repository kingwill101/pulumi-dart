// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_plain_value_args_doc}
/// Arguments for plainValue.
/// {@endtemplate}
/// {@macro pulumi_index_plain_value_args_doc}
class PlainValueArgs {
  final pulumi.Input<pulumi.CustomResource> self;

  /// Creates a new [PlainValueArgs].
  /// [self] Required.
  const PlainValueArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory PlainValueArgs.fromMap(Map<String, dynamic> map) {
    return PlainValueArgs(
      self: pulumi.Input.fromValue(map['__self__'] as pulumi.CustomResource),
    );
  }
}
