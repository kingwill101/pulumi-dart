// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_index_target_args_doc}
class TargetArgs {
  final pulumi.Input<String> name;

  /// Creates a new [TargetArgs].
  /// [name] Required.
  const TargetArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
