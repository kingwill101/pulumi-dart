// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectGroupInterconnect {
  /// The URL of an Interconnect in this group. All Interconnects in the group are unique.
  final pulumi.Input<String>? interconnect;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;

  /// Creates a new [InterconnectGroupInterconnect].
  /// [interconnect] The URL of an Interconnect in this group. All Interconnects in the group are unique.
  /// [name] The identifier for this object. Format specified above.
  const InterconnectGroupInterconnect({
    this.interconnect,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': ?interconnect,
      'name': name,
    };
  }

  factory InterconnectGroupInterconnect.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupInterconnect(
      interconnect: (() { final guardedValue = map['interconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

