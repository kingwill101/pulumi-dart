// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanStaticRouteRouteScope {
  /// List of colo names for the ECMP scope.
  final pulumi.Input<List<String>> coloNames;
  /// List of colo regions for the ECMP scope.
  final pulumi.Input<List<String>> coloRegions;

  /// Creates a new [GetMagicWanStaticRouteRouteScope].
  /// [coloNames] List of colo names for the ECMP scope.
  /// [coloRegions] List of colo regions for the ECMP scope.
  const GetMagicWanStaticRouteRouteScope({
    required this.coloNames,
    required this.coloRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coloNames': coloNames,
      'coloRegions': coloRegions,
    };
  }

  factory GetMagicWanStaticRouteRouteScope.fromMap(Map<String, dynamic> map) {
    return GetMagicWanStaticRouteRouteScope(
      coloNames: pulumi.Input.fromValue((map['coloNames'] as List).cast<String>()),
      coloRegions: pulumi.Input.fromValue((map['coloRegions'] as List).cast<String>()),
    );
  }
}
