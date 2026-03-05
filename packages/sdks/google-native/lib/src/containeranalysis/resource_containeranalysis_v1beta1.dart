// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_containeranalysis_v1beta1.dart';

/// An entity that can have metadata. For example, a Docker image.
class ResourceContaineranalysisV1beta1 {
  /// Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  final pulumi.Input<HashContaineranalysisV1beta1>? contentHash;
  /// Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  final pulumi.Input<String>? name;
  /// The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  final pulumi.Input<String> uri;

  /// Creates a new [ResourceContaineranalysisV1beta1].
  /// [contentHash] Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  /// [name] Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  /// [uri] The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ResourceContaineranalysisV1beta1({
    this.contentHash,
    this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash': ?pulumi.Input.mapOptionalInputValue<HashContaineranalysisV1beta1, Map<String, dynamic>>(contentHash, (value) => value.toMap()),
      'name': ?name,
      'uri': uri,
    };
  }

  factory ResourceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceContaineranalysisV1beta1(
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HashContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

