// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupWireEndpoint {
  /// (Output)
  final pulumi.Input<String>? interconnect;
  /// (Output)
  final pulumi.Input<int>? vlanTag;

  /// Creates a new [WireGroupWireEndpoint].
  /// [interconnect] (Output)
  /// [vlanTag] (Output)
  WireGroupWireEndpoint({
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
      interconnect: map['interconnect'] == null ? null : (map['interconnect']! as String).input(),
      vlanTag: map['vlanTag'] == null ? null : (map['vlanTag']! as int).input(),
    );
  }
}

