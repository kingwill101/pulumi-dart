// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd {
  /// The name of the header to add.
  final pulumi.Input<String?>? headerName;
  /// The value of the header to add.
  final pulumi.Input<String?>? headerValue;
  /// If false, headerValue is appended to any values that already exist for the header.
  /// If true, headerValue is set for the header, discarding any values that were set for that header.
  final pulumi.Input<bool?>? replace;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header.
  const URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd({
    this.headerName,
    this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
      'replace': ?replace,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd(
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerValue: (() { final guardedValue = map['headerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replace: (() { final guardedValue = map['replace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
