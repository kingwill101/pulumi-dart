// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_invocation_config_included_target.dart';

class RepositoryWorkflowConfigInvocationConfig {
  /// Optional. When set to true, any incremental tables will be fully refreshed.
  final pulumi.Input<bool?>? fullyRefreshIncrementalTablesEnabled;
  /// Optional. The set of tags to include.
  final pulumi.Input<List<String>?>? includedTags;
  /// Optional. The set of action identifiers to include.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryWorkflowConfigInvocationConfigIncludedTarget>?>? includedTargets;
  /// Optional. The service account to run workflow invocations under.
  final pulumi.Input<String?>? serviceAccount;
  /// Optional. When set to true, transitive dependencies of included actions will be executed.
  final pulumi.Input<bool?>? transitiveDependenciesIncluded;
  /// Optional. When set to true, transitive dependents of included actions will be executed.
  final pulumi.Input<bool?>? transitiveDependentsIncluded;

  /// Creates a new [RepositoryWorkflowConfigInvocationConfig].
  /// [fullyRefreshIncrementalTablesEnabled] Optional. When set to true, any incremental tables will be fully refreshed.
  /// [includedTags] Optional. The set of tags to include.
  /// [includedTargets] Optional. The set of action identifiers to include.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [transitiveDependenciesIncluded] Optional. When set to true, transitive dependencies of included actions will be executed.
  /// [transitiveDependentsIncluded] Optional. When set to true, transitive dependents of included actions will be executed.
  const RepositoryWorkflowConfigInvocationConfig({
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
      'includedTargets': ?pulumi.Input.mapOptionalInputValue<List<RepositoryWorkflowConfigInvocationConfigIncludedTarget>, List<Map<String, dynamic>>>(includedTargets, (value) => pulumi.Input.encodeList<RepositoryWorkflowConfigInvocationConfigIncludedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?serviceAccount,
      'transitiveDependenciesIncluded': ?transitiveDependenciesIncluded,
      'transitiveDependentsIncluded': ?transitiveDependentsIncluded,
    };
  }

  factory RepositoryWorkflowConfigInvocationConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigInvocationConfig(
      fullyRefreshIncrementalTablesEnabled: (() { final guardedValue = map['fullyRefreshIncrementalTablesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includedTags: (() { final guardedValue = map['includedTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedTargets: (() { final guardedValue = map['includedTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryWorkflowConfigInvocationConfigIncludedTarget>(guardedValue, (value) => RepositoryWorkflowConfigInvocationConfigIncludedTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitiveDependenciesIncluded: (() { final guardedValue = map['transitiveDependenciesIncluded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitiveDependentsIncluded: (() { final guardedValue = map['transitiveDependentsIncluded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
