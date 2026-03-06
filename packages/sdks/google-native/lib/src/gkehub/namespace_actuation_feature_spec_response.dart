// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An empty spec for actuation feature. This is required since Feature proto requires a spec.
class NamespaceActuationFeatureSpecResponse {
  /// actuation_mode controls the behavior of the controller
  final pulumi.Input<String> actuationMode;

  /// Creates a new [NamespaceActuationFeatureSpecResponse].
  /// [actuationMode] actuation_mode controls the behavior of the controller
  const NamespaceActuationFeatureSpecResponse({
    required this.actuationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actuationMode': actuationMode,
    };
  }

  factory NamespaceActuationFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceActuationFeatureSpecResponse(
      actuationMode: pulumi.Input.fromValue(map['actuationMode'] as String),
    );
  }
}

