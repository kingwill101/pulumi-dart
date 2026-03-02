// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryImageManifestsManifest {
  /// The platform architecture supported by the manifest.
  final pulumi.Input<String> architecture;
  /// The media type of the manifest.
  final pulumi.Input<String> mediaType;
  /// The operating system supported by the manifest.
  final pulumi.Input<String> os;
  /// The content digest of the manifest, as stored in the registry.
  final pulumi.Input<String> sha256Digest;

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
      architecture: (map['architecture'] as String).input(),
      mediaType: (map['mediaType'] as String).input(),
      os: (map['os'] as String).input(),
      sha256Digest: (map['sha256Digest'] as String).input(),
    );
  }
}

