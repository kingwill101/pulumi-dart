// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceLogConfigRequestHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [RegionBackendServiceLogConfigRequestHeader].
  /// [headerName] The header name to match on for logging.
  const RegionBackendServiceLogConfigRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory RegionBackendServiceLogConfigRequestHeader.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceLogConfigRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
