// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WireGroupWireProperties {
  /// The configuration of a wire's bandwidth allocation.
  /// ALLOCATE_PER_WIRE: configures a separate unmetered bandwidth allocation (and associated charges) for each wire in the group.
  /// SHARED_WITH_WIRE_GROUP: this is the default behavior, which configures one unmetered bandwidth allocation for the wire group. The unmetered bandwidth is divided equally across each wire in the group, but dynamic
  /// throttling reallocates unused unmetered bandwidth from unused or underused wires to other wires in the group.
  final pulumi.Input<String> bandwidthAllocation;
  /// The unmetered bandwidth setting.
  final pulumi.Input<int>? bandwidthUnmetered;
  /// Response when a fault is detected in a pseudowire:
  /// NONE: default.
  /// DISABLE_PORT: set the port line protocol down when inline probes detect a fault. This setting is only permitted on port mode pseudowires.
  final pulumi.Input<String>? faultResponse;

  /// Creates a new [WireGroupWireProperties].
  /// [bandwidthAllocation] The configuration of a wire's bandwidth allocation.
  /// [bandwidthUnmetered] The unmetered bandwidth setting.
  /// [faultResponse] Response when a fault is detected in a pseudowire:
  WireGroupWireProperties({
    required this.bandwidthAllocation,
    this.bandwidthUnmetered,
    this.faultResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthAllocation': bandwidthAllocation,
      'bandwidthUnmetered': ?bandwidthUnmetered,
      'faultResponse': ?faultResponse,
    };
  }

  factory WireGroupWireProperties.fromMap(Map<String, dynamic> map) {
    return WireGroupWireProperties(
      bandwidthAllocation: (map['bandwidthAllocation'] as String).input(),
      bandwidthUnmetered: map['bandwidthUnmetered'] == null ? null : (map['bandwidthUnmetered']! as int).input(),
      faultResponse: map['faultResponse'] == null ? null : (map['faultResponse']! as String).input(),
    );
  }
}

