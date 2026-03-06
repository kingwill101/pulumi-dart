// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleStateResponse {
  /// The current state of the scope resource.
  final pulumi.Input<String> code;

  /// Creates a new [ScopeLifecycleStateResponse].
  /// [code] The current state of the scope resource.
  const ScopeLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory ScopeLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return ScopeLifecycleStateResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

