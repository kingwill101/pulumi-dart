// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsRegoMetadataFilter {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by import path (case-sensitive literal substring match)
  final pulumi.Input<String?>? importPath;
  /// Filter by rego metadata name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;

  /// Creates a new [GetZeroTrustCwsRegoMetadataFilter].
  /// [direction] Sort direction (default: asc)
  /// [importPath] Filter by import path (case-sensitive literal substring match)
  /// [name] Filter by rego metadata name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsRegoMetadataFilter({
    required this.direction,
    this.importPath,
    this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'importPath': ?importPath,
      'name': ?name,
      'order': order,
    };
  }

  factory GetZeroTrustCwsRegoMetadataFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}
