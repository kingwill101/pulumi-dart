// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_configured_topology_capability.dart';

class InterconnectGroupConfigured {
  /// (Output)
  /// How reliable this topology is configured to be, and why
  /// this group does or does not meet the requirements for the intended
  /// capability.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupConfiguredTopologyCapability>>? topologyCapabilities;

  /// Creates a new [InterconnectGroupConfigured].
  /// [topologyCapabilities] (Output)
  InterconnectGroupConfigured({
    this.topologyCapabilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topologyCapabilities': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupConfiguredTopologyCapability>, List<Map<String, dynamic>>>(topologyCapabilities, (value) => pulumi.Input.encodeList<InterconnectGroupConfiguredTopologyCapability, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectGroupConfigured.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupConfigured(
      topologyCapabilities: (() { final guardedValue = map['topologyCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectGroupConfiguredTopologyCapability>(guardedValue, (value) => InterconnectGroupConfiguredTopologyCapability.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

