// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_id_map_gi_d.dart';
import 'domain_id_map_ui_d.dart';

class DomainIdMap {
  /// Defines the group ID mapping for identity management within the domain.
  final List<DomainIdMapGiD>? giDs;
  /// Configures the UID mapping for the domain.
  final List<DomainIdMapUiD>? uiDs;

  /// Creates a new [DomainIdMap].
  /// [giDs] Defines the group ID mapping for identity management within the domain.
  /// [uiDs] Configures the UID mapping for the domain.
  DomainIdMap({
    this.giDs,
    this.uiDs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'giDs': ?giDs == null ? null : pulumi.Input.encodeList<DomainIdMapGiD, Map<String, dynamic>>(giDs!, (value) => value.toMap()),
      'uiDs': ?uiDs == null ? null : pulumi.Input.encodeList<DomainIdMapUiD, Map<String, dynamic>>(uiDs!, (value) => value.toMap()),
    };
  }

  factory DomainIdMap.fromMap(Map<String, dynamic> map) {
    return DomainIdMap(
      giDs: map['giDs'] == null ? null : pulumi.Input.decodeList<DomainIdMapGiD>(map['giDs'], (value) => DomainIdMapGiD.fromMap((value as Map).cast<String, dynamic>())),
      uiDs: map['uiDs'] == null ? null : pulumi.Input.decodeList<DomainIdMapUiD>(map['uiDs'], (value) => DomainIdMapUiD.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

