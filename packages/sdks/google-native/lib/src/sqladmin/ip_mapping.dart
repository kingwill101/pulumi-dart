// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_mapping_type.dart';

/// Database instance IP mapping
class IpMapping {
  /// The IP address assigned.
  final pulumi.Input<String>? ipAddress;

  /// The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  final pulumi.Input<String>? timeToRetire;

  /// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  final pulumi.Input<IpMappingType>? type;

  /// Creates a new [IpMapping].
  /// [ipAddress] The IP address assigned.
  /// [timeToRetire] The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  /// [type] The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  IpMapping({this.ipAddress, this.timeToRetire, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'timeToRetire': ?timeToRetire,
      'type': ?pulumi.Input.mapOptionalInputValue<IpMappingType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory IpMapping.fromMap(Map<String, dynamic> map) {
    return IpMapping(
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeToRetire: (() {
        final guardedValue = map['timeToRetire'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IpMappingType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
