// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleStateResponseGkehubV1beta {
  /// The current state of the Namespace resource.
  final pulumi.Input<String> code;

  /// Creates a new [NamespaceLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the Namespace resource.
  const NamespaceLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory NamespaceLifecycleStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return NamespaceLifecycleStateResponseGkehubV1beta(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

