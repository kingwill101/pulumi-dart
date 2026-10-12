// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDocumentationSpec {
  /// If set, the latest DataScan job result will be published to Knowledge Catalog.
  final pulumi.Input<bool?>? catalogPublishingEnabled;
  /// The SQL dialect to use in the generated SQL queries.
  /// If not specified, the default dialect is Google SQL.
  /// Possible values are: `GOOGLE_SQL`, `SPARK_SQL`.
  final pulumi.Input<String?>? sqlDialect;

  /// Creates a new [DatascanDataDocumentationSpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Knowledge Catalog.
  /// [sqlDialect] The SQL dialect to use in the generated SQL queries.
  const DatascanDataDocumentationSpec({
    this.catalogPublishingEnabled,
    this.sqlDialect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogPublishingEnabled': ?catalogPublishingEnabled,
      'sqlDialect': ?sqlDialect,
    };
  }

  factory DatascanDataDocumentationSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataDocumentationSpec(
      catalogPublishingEnabled: (() { final guardedValue = map['catalogPublishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlDialect: (() { final guardedValue = map['sqlDialect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
