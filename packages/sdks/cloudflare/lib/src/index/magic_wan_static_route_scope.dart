// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanStaticRouteScope {
  /// List of colo names for the ECMP scope.
  final pulumi.Input<List<String>?>? coloNames;
  /// List of colo regions for the ECMP scope.
  final pulumi.Input<List<String>?>? coloRegions;

  /// Creates a new [MagicWanStaticRouteScope].
  /// [coloNames] List of colo names for the ECMP scope.
  /// [coloRegions] List of colo regions for the ECMP scope.
  const MagicWanStaticRouteScope({
    this.coloNames,
    this.coloRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coloNames': ?coloNames,
      'coloRegions': ?coloRegions,
    };
  }

  factory MagicWanStaticRouteScope.fromMap(Map<String, dynamic> map) {
    return MagicWanStaticRouteScope(
      coloNames: (() { final guardedValue = map['coloNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      coloRegions: (() { final guardedValue = map['coloRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
