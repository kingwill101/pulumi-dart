// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern {
  /// Regex to test the database name against. If empty, all databases match.
  final pulumi.Input<String>? databaseRegex;
  /// Regex to test the database resource's name against. An example of a database resource name is a table's name. Other database resource names like view names could be included in the future. If empty, all database resources match.'
  final pulumi.Input<String>? databaseResourceNameRegex;
  /// Regex to test the instance name against. If empty, all instances match.
  final pulumi.Input<String>? instanceRegex;
  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final pulumi.Input<String>? projectIdRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern].
  /// [databaseRegex] Regex to test the database name against. If empty, all databases match.
  /// [databaseResourceNameRegex] Regex to test the database resource's name against. An example of a database resource name is a table's name. Other database resource names like view names could be included in the future. If empty, all database resources match.'
  /// [instanceRegex] Regex to test the instance name against. If empty, all instances match.
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  const PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern({
    this.databaseRegex,
    this.databaseResourceNameRegex,
    this.instanceRegex,
    this.projectIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseRegex': ?databaseRegex,
      'databaseResourceNameRegex': ?databaseResourceNameRegex,
      'instanceRegex': ?instanceRegex,
      'projectIdRegex': ?projectIdRegex,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern(
      databaseRegex: (() { final guardedValue = map['databaseRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseResourceNameRegex: (() { final guardedValue = map['databaseResourceNameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRegex: (() { final guardedValue = map['instanceRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdRegex: (() { final guardedValue = map['projectIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

