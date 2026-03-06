// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingRestrictedExportConfig {
  /// If true, enable restricted export.
  final pulumi.Input<bool>? enabled;
  /// (Output)
  /// If true, restrict direct table access(read api/tabledata.list) on linked table.
  final pulumi.Input<bool>? restrictDirectTableAccess;
  /// If true, restrict export of query result derived from restricted linked dataset table.
  final pulumi.Input<bool>? restrictQueryResult;

  /// Creates a new [ListingRestrictedExportConfig].
  /// [enabled] If true, enable restricted export.
  /// [restrictDirectTableAccess] (Output)
  /// [restrictQueryResult] If true, restrict export of query result derived from restricted linked dataset table.
  const ListingRestrictedExportConfig({
    this.enabled,
    this.restrictDirectTableAccess,
    this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'restrictDirectTableAccess': ?restrictDirectTableAccess,
      'restrictQueryResult': ?restrictQueryResult,
    };
  }

  factory ListingRestrictedExportConfig.fromMap(Map<String, dynamic> map) {
    return ListingRestrictedExportConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictDirectTableAccess: (() { final guardedValue = map['restrictDirectTableAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictQueryResult: (() { final guardedValue = map['restrictQueryResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

