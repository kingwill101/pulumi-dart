// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd {
  /// The name of the header.
  final pulumi.Input<String>? headerName;
  /// The value of the header to add.
  final pulumi.Input<String>? headerValue;
  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  /// The default value is false.
  final pulumi.Input<bool>? replace;

  /// Creates a new [RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd({
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

  factory RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd(
      headerName: map['headerName'] == null ? null : (map['headerName']! as String).input(),
      headerValue: map['headerValue'] == null ? null : (map['headerValue']! as String).input(),
      replace: map['replace'] == null ? null : (map['replace']! as bool).input(),
    );
  }
}

