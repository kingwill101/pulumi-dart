// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenLineageJobInputCatalog {
  /// Catalog framework.
  final pulumi.Input<String> framework;
  /// Catalog entity name.
  final pulumi.Input<String> name;
  /// Catalog entity type.
  final pulumi.Input<String> type;

  /// Creates a new [OpenLineageJobInputCatalog].
  /// [framework] Catalog framework.
  /// [name] Catalog entity name.
  /// [type] Catalog entity type.
  const OpenLineageJobInputCatalog({
    required this.framework,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'framework': framework,
      'name': name,
      'type': type,
    };
  }

  factory OpenLineageJobInputCatalog.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobInputCatalog(
      framework: pulumi.Input.fromValue(map['framework'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
