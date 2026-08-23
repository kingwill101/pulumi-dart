// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceLogConfigResponseHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [RegionBackendServiceLogConfigResponseHeader].
  /// [headerName] The header name to match on for logging.
  const RegionBackendServiceLogConfigResponseHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory RegionBackendServiceLogConfigResponseHeader.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceLogConfigResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
