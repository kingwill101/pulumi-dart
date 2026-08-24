// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StaticRouteScope {
  /// List of colo names for the ECMP scope.
  final pulumi.Input<List<String>?>? coloNames;
  /// List of colo regions for the ECMP scope.
  final pulumi.Input<List<String>?>? coloRegions;

  /// Creates a new [StaticRouteScope].
  /// [coloNames] List of colo names for the ECMP scope.
  /// [coloRegions] List of colo regions for the ECMP scope.
  const StaticRouteScope({
    this.coloNames,
    this.coloRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coloNames': ?coloNames,
      'coloRegions': ?coloRegions,
    };
  }

  factory StaticRouteScope.fromMap(Map<String, dynamic> map) {
    return StaticRouteScope(
      coloNames: (() { final guardedValue = map['coloNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      coloRegions: (() { final guardedValue = map['coloRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
