// ignore_for_file: unused_element, unnecessary_cast


/// Resource level annotation.
class ResourceAnnotationResponse {
  /// A description of the annotation record.
  final String label;

  /// Creates a new [ResourceAnnotationResponse].
  /// [label] A description of the annotation record.
  ResourceAnnotationResponse({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
    };
  }

  factory ResourceAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAnnotationResponse(
      label: map['label'] as String,
    );
  }
}

