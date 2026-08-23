// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_response.dart';

/// Includes various configuration options for a workflow invocation. If both `included_targets` and `included_tags` are unset, all actions will be included.
class InvocationConfigResponse {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final pulumi.Input<bool> fullyRefreshIncrementalTablesEnabled;
  /// Optional. The set of tags to include.
  final pulumi.Input<List<String>> includedTags;
  /// Optional. The set of action identifiers to include.
  final pulumi.Input<List<TargetResponse>> includedTargets;
  /// Optional. The service account to run workflow invocations under.
  final pulumi.Input<String> serviceAccount;
  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final pulumi.Input<bool> transitiveDependenciesIncluded;
  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final pulumi.Input<bool> transitiveDependentsIncluded;

  /// Creates a new [InvocationConfigResponse].
  /// [fullyRefreshIncrementalTablesEnabled] Optional. When set to true, any incremental tables will be fully refreshed.
  /// [includedTags] Optional. The set of tags to include.
  /// [includedTargets] Optional. The set of action identifiers to include.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [transitiveDependenciesIncluded] Optional. When set to true, transitive dependencies of included actions will be executed.
  /// [transitiveDependentsIncluded] Optional. When set to true, transitive dependents of included actions will be executed.
  const InvocationConfigResponse({
    required this.fullyRefreshIncrementalTablesEnabled,
    required this.includedTags,
    required this.includedTargets,
    required this.serviceAccount,
    required this.transitiveDependenciesIncluded,
    required this.transitiveDependentsIncluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyRefreshIncrementalTablesEnabled': fullyRefreshIncrementalTablesEnabled,
      'includedTags': includedTags,
      'includedTargets': pulumi.Input.mapInputValue<List<TargetResponse>, List<Map<String, dynamic>>>(includedTargets, (value) => pulumi.Input.encodeList<TargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': serviceAccount,
      'transitiveDependenciesIncluded': transitiveDependenciesIncluded,
      'transitiveDependentsIncluded': transitiveDependentsIncluded,
    };
  }

  factory InvocationConfigResponse.fromMap(Map<String, dynamic> map) {
    return InvocationConfigResponse(
      fullyRefreshIncrementalTablesEnabled: pulumi.Input.fromValue(map['fullyRefreshIncrementalTablesEnabled'] as bool),
      includedTags: pulumi.Input.fromValue((map['includedTags'] as List).cast<String>()),
      includedTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<TargetResponse>(map['includedTargets']!, (value) => TargetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      transitiveDependenciesIncluded: pulumi.Input.fromValue(map['transitiveDependenciesIncluded'] as bool),
      transitiveDependentsIncluded: pulumi.Input.fromValue(map['transitiveDependentsIncluded'] as bool),
    );
  }
}
