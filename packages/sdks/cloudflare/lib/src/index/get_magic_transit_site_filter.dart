// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteFilter {
  /// Identifier
  final pulumi.Input<String?>? connectorid;

  /// Creates a new [GetMagicTransitSiteFilter].
  /// [connectorid] Identifier
  const GetMagicTransitSiteFilter({
    this.connectorid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorid': ?connectorid,
    };
  }

  factory GetMagicTransitSiteFilter.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteFilter(
      connectorid: (() { final guardedValue = map['connectorid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
