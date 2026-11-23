// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDocumentationSpec {
  /// If set, the latest DataScan job result will be published to Knowledge Catalog.
  final pulumi.Input<bool?>? catalogPublishingEnabled;
  /// Specifies which components of the data documentation to generate. Any component that is required to generate the specified components will also be generated. If no generation scope is specified, all available documentation components will be generated.
  /// Each value may be one of: `ALL`, `TABLE_AND_COLUMN_DESCRIPTIONS`, `SQL_QUERIES`, `BUSINESS_GLOSSARY_TERM_ASSOCIATIONS`.
  final pulumi.Input<List<String>?>? generationScopes;
  /// The SQL dialect to use in the generated SQL queries.
  /// If not specified, the default dialect is Google SQL.
  /// Possible values are: `GOOGLE_SQL`, `SPARK_SQL`.
  final pulumi.Input<String?>? sqlDialect;

  /// Creates a new [DatascanDataDocumentationSpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Knowledge Catalog.
  /// [generationScopes] Specifies which components of the data documentation to generate. Any component that is required to generate the specified components will also be generated. If no generation scope is specified, all available documentation components will be generated.
  /// [sqlDialect] The SQL dialect to use in the generated SQL queries.
  const DatascanDataDocumentationSpec({
    this.catalogPublishingEnabled,
    this.generationScopes,
    this.sqlDialect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogPublishingEnabled': ?catalogPublishingEnabled,
      'generationScopes': ?generationScopes,
      'sqlDialect': ?sqlDialect,
    };
  }

  factory DatascanDataDocumentationSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataDocumentationSpec(
      catalogPublishingEnabled: (() { final guardedValue = map['catalogPublishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generationScopes: (() { final guardedValue = map['generationScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sqlDialect: (() { final guardedValue = map['sqlDialect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
