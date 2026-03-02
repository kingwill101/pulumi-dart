// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_mapping_type_sqladmin_v1beta4.dart';

/// Database instance IP mapping
class IpMappingSqladminV1beta4 {
  /// The IP address assigned.
  final pulumi.Input<String>? ipAddress;
  /// The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  final pulumi.Input<String>? timeToRetire;
  /// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  final pulumi.Input<IpMappingTypeSqladminV1beta4>? type;

  /// Creates a new [IpMappingSqladminV1beta4].
  /// [ipAddress] The IP address assigned.
  /// [timeToRetire] The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  /// [type] The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  IpMappingSqladminV1beta4({
    this.ipAddress,
    this.timeToRetire,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'timeToRetire': ?timeToRetire,
      'type': ?pulumi.Input.mapOptionalInputValue<IpMappingTypeSqladminV1beta4, String>(type, (value) => value.value),
    };
  }

  factory IpMappingSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return IpMappingSqladminV1beta4(
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      timeToRetire: map['timeToRetire'] == null ? null : (map['timeToRetire']! as String).input(),
      type: map['type'] == null ? null : (IpMappingTypeSqladminV1beta4.fromValue(map['type']! as String)).input(),
    );
  }
}

