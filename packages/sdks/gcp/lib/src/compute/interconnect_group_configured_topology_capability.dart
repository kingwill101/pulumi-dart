// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_configured_topology_capability_intended_capability_blocker.dart';

class InterconnectGroupConfiguredTopologyCapability {
  /// (Output)
  /// Reasons why configuration.topologyCapability.sla differs
  /// from intent.topologyCapability. This list is empty if and only if those
  /// are the same.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker>?>? intendedCapabilityBlockers;
  /// (Output)
  /// Which level of reliability this group is configured to
  /// support.
  final pulumi.Input<String?>? supportedSla;

  /// Creates a new [InterconnectGroupConfiguredTopologyCapability].
  /// [intendedCapabilityBlockers] (Output)
  /// [supportedSla] (Output)
  const InterconnectGroupConfiguredTopologyCapability({
    this.intendedCapabilityBlockers,
    this.supportedSla,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intendedCapabilityBlockers': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker>, List<Map<String, dynamic>>>(intendedCapabilityBlockers, (value) => pulumi.Input.encodeList<InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedSla': ?supportedSla,
    };
  }

  factory InterconnectGroupConfiguredTopologyCapability.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupConfiguredTopologyCapability(
      intendedCapabilityBlockers: (() { final guardedValue = map['intendedCapabilityBlockers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker>(guardedValue, (value) => InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedSla: (() { final guardedValue = map['supportedSla']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
