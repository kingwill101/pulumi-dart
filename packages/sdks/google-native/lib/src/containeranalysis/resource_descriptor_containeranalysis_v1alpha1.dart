// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDescriptorContaineranalysisV1alpha1 {
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String>? content;
  final pulumi.Input<Map<String, String>>? digest;
  final pulumi.Input<String>? downloadLocation;
  final pulumi.Input<String>? mediaType;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? uri;

  /// Creates a new [ResourceDescriptorContaineranalysisV1alpha1].
  /// [annotations] Optional.
  /// [content] Optional.
  /// [digest] Optional.
  /// [downloadLocation] Optional.
  /// [mediaType] Optional.
  /// [name] Optional.
  /// [uri] Optional.
  ResourceDescriptorContaineranalysisV1alpha1({
    this.annotations,
    this.content,
    this.digest,
    this.downloadLocation,
    this.mediaType,
    this.name,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'content': ?content,
      'digest': ?digest,
      'downloadLocation': ?downloadLocation,
      'mediaType': ?mediaType,
      'name': ?name,
      'uri': ?uri,
    };
  }

  factory ResourceDescriptorContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptorContaineranalysisV1alpha1(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      digest: map['digest'] == null ? null : ((map['digest']! as Map).cast<String, String>()).input(),
      downloadLocation: map['downloadLocation'] == null ? null : (map['downloadLocation']! as String).input(),
      mediaType: map['mediaType'] == null ? null : (map['mediaType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

