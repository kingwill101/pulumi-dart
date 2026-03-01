// ignore_for_file: unused_element, unnecessary_cast


/// An empty spec for actuation feature. This is required since Feature proto requires a spec.
class NamespaceActuationFeatureSpecResponse {
  /// actuation_mode controls the behavior of the controller
  final String actuationMode;

  /// Creates a new [NamespaceActuationFeatureSpecResponse].
  /// [actuationMode] actuation_mode controls the behavior of the controller
  NamespaceActuationFeatureSpecResponse({
    required this.actuationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actuationMode': actuationMode,
    };
  }

  factory NamespaceActuationFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceActuationFeatureSpecResponse(
      actuationMode: map['actuationMode'] as String,
    );
  }
}

