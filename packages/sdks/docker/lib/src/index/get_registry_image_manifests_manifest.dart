// ignore_for_file: unused_element, unnecessary_cast


class GetRegistryImageManifestsManifest {
  /// The platform architecture supported by the manifest.
  final String architecture;
  /// The media type of the manifest.
  final String mediaType;
  /// The operating system supported by the manifest.
  final String os;
  /// The content digest of the manifest, as stored in the registry.
  final String sha256Digest;

  /// Creates a new [GetRegistryImageManifestsManifest].
  /// [architecture] The platform architecture supported by the manifest.
  /// [mediaType] The media type of the manifest.
  /// [os] The operating system supported by the manifest.
  /// [sha256Digest] The content digest of the manifest, as stored in the registry.
  GetRegistryImageManifestsManifest({
    required this.architecture,
    required this.mediaType,
    required this.os,
    required this.sha256Digest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'mediaType': mediaType,
      'os': os,
      'sha256Digest': sha256Digest,
    };
  }

  factory GetRegistryImageManifestsManifest.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsManifest(
      architecture: map['architecture'] as String,
      mediaType: map['mediaType'] as String,
      os: map['os'] as String,
      sha256Digest: map['sha256Digest'] as String,
    );
  }
}

