// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryImage.
class GetRegistryImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final bool? insecureSkipVerify;
  /// The name of the Docker image, including any tags. e.g. `alpine:latest`. You can also specify a digest, e.g. `nginx:1.28.0@sha256:eaa7e36decc3421fc04478c586dfea0d931cebe47d5bc0b15d758a32ba51126f`.
  final String name;
  /// The content digest of the image, as stored in the registry.
  final String sha256Digest;

  /// Creates a new [GetRegistryImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [name] The name of the Docker image, including any tags. e.g. `alpine:latest`. You can also specify a digest, e.g. `nginx:1.28.0@sha256:eaa7e36decc3421fc04478c586dfea0d931cebe47d5bc0b15d758a32ba51126f`.
  /// [sha256Digest] The content digest of the image, as stored in the registry.
  GetRegistryImageResult({
    required this.id,
    this.insecureSkipVerify,
    required this.name,
    required this.sha256Digest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'insecureSkipVerify': ?insecureSkipVerify,
      'name': name,
      'sha256Digest': sha256Digest,
    };
  }

  factory GetRegistryImageResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageResult(
      id: map['id'] as String,
      insecureSkipVerify: (() { final guardedValue = map['insecureSkipVerify']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      sha256Digest: map['sha256Digest'] as String,
    );
  }
}

