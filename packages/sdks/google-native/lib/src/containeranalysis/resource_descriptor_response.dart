// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDescriptorResponse {
  final pulumi.Input<Map<String, String>> annotations;
  final pulumi.Input<String> content;
  final pulumi.Input<Map<String, String>> digest;
  final pulumi.Input<String> downloadLocation;
  final pulumi.Input<String> mediaType;
  final pulumi.Input<String> name;
  final pulumi.Input<String> uri;

  /// Creates a new [ResourceDescriptorResponse].
  /// [annotations] Required.
  /// [content] Required.
  /// [digest] Required.
  /// [downloadLocation] Required.
  /// [mediaType] Required.
  /// [name] Required.
  /// [uri] Required.
  ResourceDescriptorResponse({
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

  factory ResourceDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptorResponse(
      annotations: ((map['annotations'] as Map).cast<String, String>()).input(),
      content: (map['content'] as String).input(),
      digest: ((map['digest'] as Map).cast<String, String>()).input(),
      downloadLocation: (map['downloadLocation'] as String).input(),
      mediaType: (map['mediaType'] as String).input(),
      name: (map['name'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

