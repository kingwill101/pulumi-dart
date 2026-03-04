// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_protocol_version.dart';

/// Filter matches L4 traffic.
class Filter {
  /// Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final pulumi.Input<String>? destRange;

  /// Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final pulumi.Input<String>? ipProtocol;

  /// Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  final pulumi.Input<FilterProtocolVersion> protocolVersion;

  /// Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final pulumi.Input<String>? srcRange;

  /// Creates a new [Filter].
  /// [destRange] Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  /// [ipProtocol] Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  /// [protocolVersion] Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  /// [srcRange] Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  Filter({
    this.destRange,
    this.ipProtocol,
    required this.protocolVersion,
    this.srcRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destRange': ?destRange,
      'ipProtocol': ?ipProtocol,
      'protocolVersion':
          pulumi.Input.mapInputValue<FilterProtocolVersion, String>(
            protocolVersion,
            (value) => value.wireValue,
          ),
      'srcRange': ?srcRange,
    };
  }

  factory Filter.fromMap(Map<String, dynamic> map) {
    return Filter(
      destRange: (() {
        final guardedValue = map['destRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipProtocol: (() {
        final guardedValue = map['ipProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolVersion: pulumi.Input.fromValue(
        FilterProtocolVersion.fromValue(map['protocolVersion']! as String),
      ),
      srcRange: (() {
        final guardedValue = map['srcRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
