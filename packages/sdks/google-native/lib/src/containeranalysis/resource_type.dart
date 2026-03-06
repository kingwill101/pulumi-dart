// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash.dart';

/// Resource is an entity that can have metadata. E.g., a Docker image.
class ResourceType {
  /// The hash of the resource content. E.g., the Docker digest.
  final pulumi.Input<Hash>? contentHash;
  /// The name of the resource. E.g., the name of a Docker image - "Debian".
  final pulumi.Input<String>? name;
  /// The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
  final pulumi.Input<String>? uri;

  /// Creates a new [ResourceType].
  /// [contentHash] The hash of the resource content. E.g., the Docker digest.
  /// [name] The name of the resource. E.g., the name of a Docker image - "Debian".
  /// [uri] The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
  const ResourceType({
    this.contentHash,
    this.name,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': ?pulumi.Input.mapOptionalInputValue<Hash, Map<String, dynamic>>(contentHash, (value) => value.toMap()),
      'name': ?name,
      'uri': ?uri,
    };
  }

  factory ResourceType.fromMap(Map<String, dynamic> map) {
    return ResourceType(
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Hash.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

