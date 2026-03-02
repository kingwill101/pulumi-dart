// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request header options.
class ResourceTypeRegistrationPropertiesRequestHeaderOptions {
  /// The opt in headers.
  final pulumi.Input<String>? optInHeaders;
  /// The opt out headers.
  final pulumi.Input<String>? optOutHeaders;

  /// Creates a new [ResourceTypeRegistrationPropertiesRequestHeaderOptions].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  ResourceTypeRegistrationPropertiesRequestHeaderOptions({
    this.optInHeaders,
    this.optOutHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInHeaders': ?optInHeaders,
      'optOutHeaders': ?optOutHeaders,
    };
  }

  factory ResourceTypeRegistrationPropertiesRequestHeaderOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesRequestHeaderOptions(
      optInHeaders: map['optInHeaders'] == null ? null : (map['optInHeaders'] as String).input(),
      optOutHeaders: map['optOutHeaders'] == null ? null : (map['optOutHeaders'] as String).input(),
    );
  }
}

