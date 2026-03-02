// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_id_map_gi_d.dart';
import 'domain_id_map_ui_d.dart';

class DomainIdMap {
  /// Defines the group ID mapping for identity management within the domain.
  final pulumi.Input<List<DomainIdMapGiD>>? giDs;
  /// Configures the UID mapping for the domain.
  final pulumi.Input<List<DomainIdMapUiD>>? uiDs;

  /// Creates a new [DomainIdMap].
  /// [giDs] Defines the group ID mapping for identity management within the domain.
  /// [uiDs] Configures the UID mapping for the domain.
  DomainIdMap({
    this.giDs,
    this.uiDs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'giDs': ?pulumi.Input.mapOptionalInputValue<List<DomainIdMapGiD>, List<Map<String, dynamic>>>(giDs, (value) => pulumi.Input.encodeList<DomainIdMapGiD, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uiDs': ?pulumi.Input.mapOptionalInputValue<List<DomainIdMapUiD>, List<Map<String, dynamic>>>(uiDs, (value) => pulumi.Input.encodeList<DomainIdMapUiD, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainIdMap.fromMap(Map<String, dynamic> map) {
    return DomainIdMap(
      giDs: map['giDs'] == null ? null : (pulumi.Input.decodeList<DomainIdMapGiD>(map['giDs']!, (value) => DomainIdMapGiD.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uiDs: map['uiDs'] == null ? null : (pulumi.Input.decodeList<DomainIdMapUiD>(map['uiDs']!, (value) => DomainIdMapUiD.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

