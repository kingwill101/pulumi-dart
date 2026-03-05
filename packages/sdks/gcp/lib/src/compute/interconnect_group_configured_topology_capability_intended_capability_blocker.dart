// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker {
  /// (Output)
  /// The category of an unmet SLA requirement. The Intended
  /// SLA Blockers section below explains this field and how it relates to
  /// other fields in intendedCapabilityBlockers.
  final pulumi.Input<String>? blockerType;
  /// (Output)
  /// The url of Google Cloud public documentation explaining
  /// this requirement. This is set for every type of requirement.
  final pulumi.Input<String>? documentationLink;
  /// (Output)
  /// A human-readable explanation of this requirement and
  /// why it's not met. This is set for every type of requirement.
  final pulumi.Input<String>? explanation;
  /// (Output)
  /// Facilities used to explain this blocker in more detail.
  /// Like physicalStructure.metros.facilities.facility, this is a numeric
  /// string like "5467".
  final pulumi.Input<List<String>>? facilities;
  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<String>>? interconnects;
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". A blocker like
  /// INCOMPATIBLE_METROS will specify the problematic metros in this
  /// field.
  final pulumi.Input<List<String>>? metros;
  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Zone names are "zone1" and/or "zone2".
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker].
  /// [blockerType] (Output)
  /// [documentationLink] (Output)
  /// [explanation] (Output)
  /// [facilities] (Output)
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [metros] (Output)
  /// [zones] (Output)
  InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker({
    this.blockerType,
    this.documentationLink,
    this.explanation,
    this.facilities,
    this.interconnects,
    this.metros,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockerType': ?blockerType,
      'documentationLink': ?documentationLink,
      'explanation': ?explanation,
      'facilities': ?facilities,
      'interconnects': ?interconnects,
      'metros': ?metros,
      'zones': ?zones,
    };
  }

  factory InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker(
      blockerType: (() { final guardedValue = map['blockerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationLink: (() { final guardedValue = map['documentationLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explanation: (() { final guardedValue = map['explanation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      facilities: (() { final guardedValue = map['facilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      interconnects: (() { final guardedValue = map['interconnects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metros: (() { final guardedValue = map['metros']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

