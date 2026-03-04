// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_response_containeranalysis_v1beta1.dart';

/// An entity that can have metadata. For example, a Docker image.
class ResourceResponseContaineranalysisV1beta1 {
  /// Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  final pulumi.Input<HashResponseContaineranalysisV1beta1> contentHash;

  /// Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  final pulumi.Input<String> name;

  /// The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  final pulumi.Input<String> uri;

  /// Creates a new [ResourceResponseContaineranalysisV1beta1].
  /// [contentHash] Deprecated, do not use. Use uri instead. The hash of the resource content. For example, the Docker digest.
  /// [name] Deprecated, do not use. Use uri instead. The name of the resource. For example, the name of a Docker image - "Debian".
  /// [uri] The unique URI of the resource. For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ResourceResponseContaineranalysisV1beta1({
    required this.contentHash,
    required this.name,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHash':
          pulumi.Input.mapInputValue<
            HashResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(contentHash, (value) => value.toMap()),
      'name': name,
      'uri': uri,
    };
  }

  factory ResourceResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceResponseContaineranalysisV1beta1(
      contentHash: pulumi.Input.fromValue(
        HashResponseContaineranalysisV1beta1.fromMap(
          (map['contentHash']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
