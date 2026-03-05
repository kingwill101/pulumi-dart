// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDescriptorContaineranalysisV1beta1 {
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String>? content;
  final pulumi.Input<Map<String, String>>? digest;
  final pulumi.Input<String>? downloadLocation;
  final pulumi.Input<String>? mediaType;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? uri;

  /// Creates a new [ResourceDescriptorContaineranalysisV1beta1].
  /// [annotations] Optional.
  /// [content] Optional.
  /// [digest] Optional.
  /// [downloadLocation] Optional.
  /// [mediaType] Optional.
  /// [name] Optional.
  /// [uri] Optional.
  ResourceDescriptorContaineranalysisV1beta1({
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

  factory ResourceDescriptorContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceDescriptorContaineranalysisV1beta1(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      downloadLocation: (() { final guardedValue = map['downloadLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaType: (() { final guardedValue = map['mediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

