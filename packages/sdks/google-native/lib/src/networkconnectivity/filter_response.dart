// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter matches L4 traffic.
class FilterResponse {
  /// Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final pulumi.Input<String> destRange;
  /// Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final pulumi.Input<String> ipProtocol;
  /// Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  final pulumi.Input<String> protocolVersion;
  /// Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final pulumi.Input<String> srcRange;

  /// Creates a new [FilterResponse].
  /// [destRange] Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  /// [ipProtocol] Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  /// [protocolVersion] Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  /// [srcRange] Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  const FilterResponse({
    required this.destRange,
    required this.ipProtocol,
    required this.protocolVersion,
    required this.srcRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destRange': destRange,
      'ipProtocol': ipProtocol,
      'protocolVersion': protocolVersion,
      'srcRange': srcRange,
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      destRange: pulumi.Input.fromValue(map['destRange'] as String),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as String),
      srcRange: pulumi.Input.fromValue(map['srcRange'] as String),
    );
  }
}
