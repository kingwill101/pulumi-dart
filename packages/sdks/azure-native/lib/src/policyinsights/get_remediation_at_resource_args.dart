// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_resource_args_doc}
/// Arguments for getRemediationAtResource.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_resource_args_doc}
class GetRemediationAtResourceArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// Resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetRemediationAtResourceArgs].
  /// [remediationName] The name of the remediation.
  /// [resourceId] Resource ID.
  GetRemediationAtResourceArgs({
    required this.remediationName,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
      'resourceId': resourceId,
    };
  }

  factory GetRemediationAtResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtResourceArgs(
      remediationName: pulumi.Input.fromValue(map['remediationName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

