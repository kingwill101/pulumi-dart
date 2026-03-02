// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request header options.
class ResourceProviderManifestPropertiesRequestHeaderOptionsResponse {
  /// The opt in headers.
  final pulumi.Input<String>? optInHeaders;
  /// The opt out headers.
  final pulumi.Input<String>? optOutHeaders;

  /// Creates a new [ResourceProviderManifestPropertiesRequestHeaderOptionsResponse].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  ResourceProviderManifestPropertiesRequestHeaderOptionsResponse({
    this.optInHeaders,
    this.optOutHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInHeaders': ?optInHeaders,
      'optOutHeaders': ?optOutHeaders,
    };
  }

  factory ResourceProviderManifestPropertiesRequestHeaderOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesRequestHeaderOptionsResponse(
      optInHeaders: map['optInHeaders'] == null ? null : (map['optInHeaders']! as String).input(),
      optOutHeaders: map['optOutHeaders'] == null ? null : (map['optOutHeaders']! as String).input(),
    );
  }
}

