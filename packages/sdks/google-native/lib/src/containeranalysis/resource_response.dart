// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_response.dart';

/// Resource is an entity that can have metadata. E.g., a Docker image.
class ResourceResponse {
  /// The hash of the resource content. E.g., the Docker digest.
  final pulumi.Input<HashResponse> contentHash;
  /// The name of the resource. E.g., the name of a Docker image - "Debian".
  final pulumi.Input<String> name;
  /// The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
  final pulumi.Input<String> uri;

  /// Creates a new [ResourceResponse].
  /// [contentHash] The hash of the resource content. E.g., the Docker digest.
  /// [name] The name of the resource. E.g., the name of a Docker image - "Debian".
  /// [uri] The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
  ResourceResponse({
    required this.contentHash,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': pulumi.Input.mapInputValue<HashResponse, Map<String, dynamic>>(contentHash, (value) => value.toMap()),
      'name': name,
      'uri': uri,
    };
  }

  factory ResourceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceResponse(
      contentHash: pulumi.Input.fromValue(HashResponse.fromMap((map['contentHash']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

