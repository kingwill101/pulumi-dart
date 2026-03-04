// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponseGkehubV1alpha {
  /// The current state of the Namespace resource.
  final pulumi.Input<String> code;

  /// Creates a new [NamespaceLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the Namespace resource.
  NamespaceLifecycleStateResponseGkehubV1alpha({required this.code});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code};
  }

  factory NamespaceLifecycleStateResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return NamespaceLifecycleStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}
