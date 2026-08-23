// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2BigQueryRegexResponse {
  /// If unset, this property matches all datasets.
  final pulumi.Input<String> datasetIdRegex;
  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final pulumi.Input<String> projectIdRegex;
  /// If unset, this property matches all tables.
  final pulumi.Input<String> tableIdRegex;

  /// Creates a new [GooglePrivacyDlpV2BigQueryRegexResponse].
  /// [datasetIdRegex] If unset, this property matches all datasets.
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  /// [tableIdRegex] If unset, this property matches all tables.
  const GooglePrivacyDlpV2BigQueryRegexResponse({
    required this.datasetIdRegex,
    required this.projectIdRegex,
    required this.tableIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetIdRegex': datasetIdRegex,
      'projectIdRegex': projectIdRegex,
      'tableIdRegex': tableIdRegex,
    };
  }

  factory GooglePrivacyDlpV2BigQueryRegexResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexResponse(
      datasetIdRegex: pulumi.Input.fromValue(map['datasetIdRegex'] as String),
      projectIdRegex: pulumi.Input.fromValue(map['projectIdRegex'] as String),
      tableIdRegex: pulumi.Input.fromValue(map['tableIdRegex'] as String),
    );
  }
}
