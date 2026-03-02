// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target.dart';

/// Includes various configuration options for a workflow invocation. If both `included_targets` and `included_tags` are unset, all actions will be included.
class InvocationConfig {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final pulumi.Input<bool>? fullyRefreshIncrementalTablesEnabled;
  /// Optional. The set of tags to include.
  final pulumi.Input<List<String>>? includedTags;
  /// Optional. The set of action identifiers to include.
  final pulumi.Input<List<Target>>? includedTargets;
  /// Optional. The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final pulumi.Input<bool>? transitiveDependenciesIncluded;
  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final pulumi.Input<bool>? transitiveDependentsIncluded;

  /// Creates a new [InvocationConfig].
  /// [fullyRefreshIncrementalTablesEnabled] Optional. When set to true, any incremental tables will be fully refreshed.
  /// [includedTags] Optional. The set of tags to include.
  /// [includedTargets] Optional. The set of action identifiers to include.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [transitiveDependenciesIncluded] Optional. When set to true, transitive dependencies of included actions will be executed.
  /// [transitiveDependentsIncluded] Optional. When set to true, transitive dependents of included actions will be executed.
  InvocationConfig({
    this.fullyRefreshIncrementalTablesEnabled,
    this.includedTags,
    this.includedTargets,
    this.serviceAccount,
    this.transitiveDependenciesIncluded,
    this.transitiveDependentsIncluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyRefreshIncrementalTablesEnabled': ?fullyRefreshIncrementalTablesEnabled,
      'includedTags': ?includedTags,
      'includedTargets': ?pulumi.Input.mapOptionalInputValue<List<Target>, List<Map<String, dynamic>>>(includedTargets, (value) => pulumi.Input.encodeList<Target, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'transitiveDependenciesIncluded': ?transitiveDependenciesIncluded,
      'transitiveDependentsIncluded': ?transitiveDependentsIncluded,
    };
  }

  factory InvocationConfig.fromMap(Map<String, dynamic> map) {
    return InvocationConfig(
      fullyRefreshIncrementalTablesEnabled: map['fullyRefreshIncrementalTablesEnabled'] == null ? null : (map['fullyRefreshIncrementalTablesEnabled'] as bool).input(),
      includedTags: map['includedTags'] == null ? null : ((map['includedTags'] as List).cast<String>()).input(),
      includedTargets: map['includedTargets'] == null ? null : (pulumi.Input.decodeList<Target>(map['includedTargets'], (value) => Target.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      transitiveDependenciesIncluded: map['transitiveDependenciesIncluded'] == null ? null : (map['transitiveDependenciesIncluded'] as bool).input(),
      transitiveDependentsIncluded: map['transitiveDependentsIncluded'] == null ? null : (map['transitiveDependentsIncluded'] as bool).input(),
    );
  }
}

