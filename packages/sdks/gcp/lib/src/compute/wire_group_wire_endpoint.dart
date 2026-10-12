// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupWireEndpoint {
  /// (Output)
  final pulumi.Input<String?>? interconnect;
  /// (Output)
  final pulumi.Input<int?>? vlanTag;

  /// Creates a new [WireGroupWireEndpoint].
  /// [interconnect] (Output)
  /// [vlanTag] (Output)
  const WireGroupWireEndpoint({
    this.interconnect,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': ?interconnect,
      'vlanTag': ?vlanTag,
    };
  }

  factory WireGroupWireEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupWireEndpoint(
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
