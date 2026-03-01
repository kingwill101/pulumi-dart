// ignore_for_file: unused_element, unnecessary_cast


class ResourceDescriptorResponseContaineranalysisV1alpha1 {
  final Map<String, String> annotations;
  final String content;
  final Map<String, String> digest;
  final String downloadLocation;
  final String mediaType;
  final String name;
  final String uri;

  /// Creates a new [ResourceDescriptorResponseContaineranalysisV1alpha1].
  /// [annotations] Required.
  /// [content] Required.
  /// [digest] Required.
  /// [downloadLocation] Required.
  /// [mediaType] Required.
  /// [name] Required.
  /// [uri] Required.
  ResourceDescriptorResponseContaineranalysisV1alpha1({
    required this.annotations,
    required this.content,
    required this.digest,
    required this.downloadLocation,
    required this.mediaType,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'content': content,
      'digest': digest,
      'downloadLocation': downloadLocation,
      'mediaType': mediaType,
      'name': name,
      'uri': uri,
    };
  }

  factory ResourceDescriptorResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptorResponseContaineranalysisV1alpha1(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      content: map['content'] as String,
      digest: (map['digest'] as Map).cast<String, String>(),
      downloadLocation: map['downloadLocation'] as String,
      mediaType: map['mediaType'] as String,
      name: map['name'] as String,
      uri: map['uri'] as String,
    );
  }
}

