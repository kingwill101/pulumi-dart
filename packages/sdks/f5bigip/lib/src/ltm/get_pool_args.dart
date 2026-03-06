// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_get_pool_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_pool_get_pool_args_doc}
class GetPoolArgs {
  /// Name of the ltm monitor
  final pulumi.Input<String> name;
  /// partition of the ltm monitor
  final pulumi.Input<String> partition;

  /// Creates a new [GetPoolArgs].
  /// [name] Name of the ltm monitor
  /// [partition] partition of the ltm monitor
  const GetPoolArgs({
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partition': partition,
    };
  }

  factory GetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPoolArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: pulumi.Input.fromValue(map['partition'] as String),
    );
  }
}

