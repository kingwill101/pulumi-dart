// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolNodePlacement {
  /// The placement policy for allocating nodes in the pool.
  final pulumi.Input<String> policy;

  /// Creates a new [GetPoolNodePlacement].
  /// [policy] The placement policy for allocating nodes in the pool.
  GetPoolNodePlacement({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetPoolNodePlacement.fromMap(Map<String, dynamic> map) {
    return GetPoolNodePlacement(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}

