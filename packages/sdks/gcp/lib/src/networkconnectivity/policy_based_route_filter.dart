// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyBasedRouteFilter {
  /// The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  final pulumi.Input<String>? destRange;
  /// The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final pulumi.Input<String>? ipProtocol;
  /// Internet protocol versions this policy-based route applies to.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String> protocolVersion;
  /// The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  final pulumi.Input<String>? srcRange;

  /// Creates a new [PolicyBasedRouteFilter].
  /// [destRange] The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  /// [ipProtocol] The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  /// [protocolVersion] Internet protocol versions this policy-based route applies to.
  /// [srcRange] The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0".
  PolicyBasedRouteFilter({
    this.destRange,
    this.ipProtocol,
    required this.protocolVersion,
    this.srcRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destRange': ?destRange,
      'ipProtocol': ?ipProtocol,
      'protocolVersion': protocolVersion,
      'srcRange': ?srcRange,
    };
  }

  factory PolicyBasedRouteFilter.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteFilter(
      destRange: (() { final guardedValue = map['destRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as String),
      srcRange: (() { final guardedValue = map['srcRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

