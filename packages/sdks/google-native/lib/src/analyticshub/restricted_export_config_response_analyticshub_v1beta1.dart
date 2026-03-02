// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Restricted export config, used to configure restricted export on linked dataset.
class RestrictedExportConfigResponseAnalyticshubV1beta1 {
  /// Optional. If true, enable restricted export.
  final pulumi.Input<bool> enabled;
  /// If true, restrict direct table access(read api/tabledata.list) on linked table.
  final pulumi.Input<bool> restrictDirectTableAccess;
  /// Optional. If true, restrict export of query result derived from restricted linked dataset table.
  final pulumi.Input<bool> restrictQueryResult;

  /// Creates a new [RestrictedExportConfigResponseAnalyticshubV1beta1].
  /// [enabled] Optional. If true, enable restricted export.
  /// [restrictDirectTableAccess] If true, restrict direct table access(read api/tabledata.list) on linked table.
  /// [restrictQueryResult] Optional. If true, restrict export of query result derived from restricted linked dataset table.
  RestrictedExportConfigResponseAnalyticshubV1beta1({
    required this.enabled,
    required this.restrictDirectTableAccess,
    required this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'restrictDirectTableAccess': restrictDirectTableAccess,
      'restrictQueryResult': restrictQueryResult,
    };
  }

  factory RestrictedExportConfigResponseAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return RestrictedExportConfigResponseAnalyticshubV1beta1(
      enabled: (map['enabled'] as bool).input(),
      restrictDirectTableAccess: (map['restrictDirectTableAccess'] as bool).input(),
      restrictQueryResult: (map['restrictQueryResult'] as bool).input(),
    );
  }
}

