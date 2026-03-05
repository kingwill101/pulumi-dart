// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleStateResponseGkehubV1alpha {
  /// The current state of the scope resource.
  final pulumi.Input<String> code;

  /// Creates a new [ScopeLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the scope resource.
  ScopeLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory ScopeLifecycleStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ScopeLifecycleStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

