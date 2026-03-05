// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern {
  /// if unset, this property matches all datasets
  final pulumi.Input<String>? datasetIdRegex;
  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final pulumi.Input<String>? projectIdRegex;
  /// if unset, this property matches all tables
  final pulumi.Input<String>? tableIdRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern].
  /// [datasetIdRegex] if unset, this property matches all datasets
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  /// [tableIdRegex] if unset, this property matches all tables
  PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetIdRegex': ?datasetIdRegex,
      'projectIdRegex': ?projectIdRegex,
      'tableIdRegex': ?tableIdRegex,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern(
      datasetIdRegex: (() { final guardedValue = map['datasetIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdRegex: (() { final guardedValue = map['projectIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableIdRegex: (() { final guardedValue = map['tableIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

