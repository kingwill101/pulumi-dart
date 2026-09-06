// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request header options.
class ResourceTypeRegistrationPropertiesRequestHeaderOptions {
  /// The opt in headers.
  final pulumi.Input<dynamic>? optInHeaders;
  /// The opt out headers.
  final pulumi.Input<dynamic>? optOutHeaders;

  /// Creates a new [ResourceTypeRegistrationPropertiesRequestHeaderOptions].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  const ResourceTypeRegistrationPropertiesRequestHeaderOptions({
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
      optInHeaders: (() { final guardedValue = map['optInHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      optOutHeaders: (() { final guardedValue = map['optOutHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
