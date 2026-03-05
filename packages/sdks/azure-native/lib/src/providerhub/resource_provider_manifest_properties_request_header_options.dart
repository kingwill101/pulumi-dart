// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request header options.
class ResourceProviderManifestPropertiesRequestHeaderOptions {
  /// The opt in headers.
  final pulumi.Input<String>? optInHeaders;
  /// The opt out headers.
  final pulumi.Input<String>? optOutHeaders;

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
      optInHeaders: (() { final guardedValue = map['optInHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optOutHeaders: (() { final guardedValue = map['optOutHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

