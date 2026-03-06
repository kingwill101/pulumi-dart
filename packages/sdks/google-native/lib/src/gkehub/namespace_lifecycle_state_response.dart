// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponse {
  /// The current state of the Namespace resource.
  final pulumi.Input<String> code;

  /// Creates a new [NamespaceLifecycleStateResponse].
  /// [code] The current state of the Namespace resource.
  const NamespaceLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory NamespaceLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceLifecycleStateResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

