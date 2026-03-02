// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_physical_structure_metro.dart';

class InterconnectGroupPhysicalStructure {
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". A blocker like
  /// INCOMPATIBLE_METROS will specify the problematic metros in this
  /// field.
  final pulumi.Input<List<InterconnectGroupPhysicalStructureMetro>>? metros;

  /// Creates a new [InterconnectGroupPhysicalStructure].
  /// [metros] (Output)
  InterconnectGroupPhysicalStructure({
    this.metros,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metros': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupPhysicalStructureMetro>, List<Map<String, dynamic>>>(metros, (value) => pulumi.Input.encodeList<InterconnectGroupPhysicalStructureMetro, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectGroupPhysicalStructure.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructure(
      metros: map['metros'] == null ? null : (pulumi.Input.decodeList<InterconnectGroupPhysicalStructureMetro>(map['metros'], (value) => InterconnectGroupPhysicalStructureMetro.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

