// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupEndpointInterconnect {
  /// (Optional)
  final pulumi.Input<String>? interconnect;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> interconnectName;
  /// VLAN tags for the interconnect.
  final pulumi.Input<List<int>>? vlanTags;

  /// Creates a new [WireGroupEndpointInterconnect].
  /// [interconnect] (Optional)
  /// [interconnectName] The identifier for this object. Format specified above.
  /// [vlanTags] VLAN tags for the interconnect.
  WireGroupEndpointInterconnect({
    this.interconnect,
    required this.interconnectName,
    this.vlanTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': ?interconnect,
      'interconnectName': interconnectName,
      'vlanTags': ?vlanTags,
    };
  }

  factory WireGroupEndpointInterconnect.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpointInterconnect(
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnectName: pulumi.Input.fromValue(map['interconnectName'] as String),
      vlanTags: (() { final guardedValue = map['vlanTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

