// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GalleryApplicationVersionSource {
  /// The Storage Blob URI of the default configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? defaultConfigurationLink;
  /// The Storage Blob URI of the source application package. Changing this forces a new resource to be created.
  final pulumi.Input<String> mediaLink;

  /// Creates a new [GalleryApplicationVersionSource].
  /// [defaultConfigurationLink] The Storage Blob URI of the default configuration. Changing this forces a new resource to be created.
  /// [mediaLink] The Storage Blob URI of the source application package. Changing this forces a new resource to be created.
  GalleryApplicationVersionSource({
    this.defaultConfigurationLink,
    required this.mediaLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfigurationLink': ?defaultConfigurationLink,
      'mediaLink': mediaLink,
    };
  }

  factory GalleryApplicationVersionSource.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionSource(
      defaultConfigurationLink: map['defaultConfigurationLink'] == null ? null : (map['defaultConfigurationLink'] as String).input(),
      mediaLink: (map['mediaLink'] as String).input(),
    );
  }
}

