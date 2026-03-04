// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request header options.
class ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse {
  /// The opt in headers.
  final pulumi.Input<String>? optInHeaders;

  /// The opt out headers.
  final pulumi.Input<String>? optOutHeaders;

  /// Creates a new [ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse({
    this.optInHeaders,
    this.optOutHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInHeaders': ?optInHeaders,
      'optOutHeaders': ?optOutHeaders,
    };
  }

  factory ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse(
      optInHeaders: (() {
        final guardedValue = map['optInHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optOutHeaders: (() {
        final guardedValue = map['optOutHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
