// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance IP mapping
class IpMappingResponseSqladminV1beta4 {
  /// The IP address assigned.
  final pulumi.Input<String> ipAddress;
  /// The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  final pulumi.Input<String> timeToRetire;
  /// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  final pulumi.Input<String> type;

  /// Creates a new [IpMappingResponseSqladminV1beta4].
  /// [ipAddress] The IP address assigned.
  /// [timeToRetire] The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  /// [type] The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  IpMappingResponseSqladminV1beta4({
    required this.ipAddress,
    required this.timeToRetire,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'timeToRetire': timeToRetire,
      'type': type,
    };
  }

  factory IpMappingResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return IpMappingResponseSqladminV1beta4(
      ipAddress: (map['ipAddress'] as String).input(),
      timeToRetire: (map['timeToRetire'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

