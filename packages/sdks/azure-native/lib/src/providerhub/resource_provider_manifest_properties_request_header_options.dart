// ignore_for_file: unused_element, unnecessary_cast


/// The request header options.
class ResourceProviderManifestPropertiesRequestHeaderOptions {
  /// The opt in headers.
  final String? optInHeaders;
  /// The opt out headers.
  final String? optOutHeaders;

  /// Creates a new [ResourceProviderManifestPropertiesRequestHeaderOptions].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  ResourceProviderManifestPropertiesRequestHeaderOptions({
    this.optInHeaders,
    this.optOutHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInHeaders': ?optInHeaders,
      'optOutHeaders': ?optOutHeaders,
    };
  }

  factory ResourceProviderManifestPropertiesRequestHeaderOptions.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesRequestHeaderOptions(
      optInHeaders: map['optInHeaders'] == null ? null : map['optInHeaders'] as String,
      optOutHeaders: map['optOutHeaders'] == null ? null : map['optOutHeaders'] as String,
    );
  }
}

