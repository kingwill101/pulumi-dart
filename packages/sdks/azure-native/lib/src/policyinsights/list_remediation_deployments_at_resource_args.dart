// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_list_remediation_deployments_at_resource_args_doc}
/// Arguments for listRemediationDeploymentsAtResource.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_list_remediation_deployments_at_resource_args_doc}
class ListRemediationDeploymentsAtResourceArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// Resource ID.
  final pulumi.Input<String> resourceId;
  /// Maximum number of records to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListRemediationDeploymentsAtResourceArgs].
  /// [remediationName] The name of the remediation.
  /// [resourceId] Resource ID.
  /// [top] Maximum number of records to return.
  ListRemediationDeploymentsAtResourceArgs({
    required this.remediationName,
    required this.resourceId,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
      'resourceId': resourceId,
      'top': ?top,
    };
  }

  factory ListRemediationDeploymentsAtResourceArgs.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtResourceArgs(
      remediationName: pulumi.Input.fromValue(map['remediationName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

