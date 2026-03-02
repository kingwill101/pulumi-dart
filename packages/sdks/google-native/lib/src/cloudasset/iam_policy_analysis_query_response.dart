// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_selector_response.dart';
import 'condition_context_response.dart';
import 'identity_selector_response.dart';
import 'options_response.dart';
import 'resource_selector_response.dart';

/// IAM policy analysis query message.
class IamPolicyAnalysisQueryResponse {
  /// Optional. Specifies roles or permissions for analysis. This is optional.
  final pulumi.Input<AccessSelectorResponse> accessSelector;
  /// Optional. The hypothetical context for IAM conditions evaluation.
  final pulumi.Input<ConditionContextResponse> conditionContext;
  /// Optional. Specifies an identity for analysis.
  final pulumi.Input<IdentitySelectorResponse> identitySelector;
  /// Optional. The query options.
  final pulumi.Input<OptionsResponse> options;
  /// Optional. Specifies a resource for analysis.
  final pulumi.Input<ResourceSelectorResponse> resourceSelector;
  /// The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  final pulumi.Input<String> scope;

  /// Creates a new [IamPolicyAnalysisQueryResponse].
  /// [accessSelector] Optional. Specifies roles or permissions for analysis. This is optional.
  /// [conditionContext] Optional. The hypothetical context for IAM conditions evaluation.
  /// [identitySelector] Optional. Specifies an identity for analysis.
  /// [options] Optional. The query options.
  /// [resourceSelector] Optional. Specifies a resource for analysis.
  /// [scope] The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  IamPolicyAnalysisQueryResponse({
    required this.accessSelector,
    required this.conditionContext,
    required this.identitySelector,
    required this.options,
    required this.resourceSelector,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSelector': pulumi.Input.mapInputValue<AccessSelectorResponse, Map<String, dynamic>>(accessSelector, (value) => value.toMap()),
      'conditionContext': pulumi.Input.mapInputValue<ConditionContextResponse, Map<String, dynamic>>(conditionContext, (value) => value.toMap()),
      'identitySelector': pulumi.Input.mapInputValue<IdentitySelectorResponse, Map<String, dynamic>>(identitySelector, (value) => value.toMap()),
      'options': pulumi.Input.mapInputValue<OptionsResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resourceSelector': pulumi.Input.mapInputValue<ResourceSelectorResponse, Map<String, dynamic>>(resourceSelector, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory IamPolicyAnalysisQueryResponse.fromMap(Map<String, dynamic> map) {
    return IamPolicyAnalysisQueryResponse(
      accessSelector: (AccessSelectorResponse.fromMap((map['accessSelector'] as Map).cast<String, dynamic>())).input(),
      conditionContext: (ConditionContextResponse.fromMap((map['conditionContext'] as Map).cast<String, dynamic>())).input(),
      identitySelector: (IdentitySelectorResponse.fromMap((map['identitySelector'] as Map).cast<String, dynamic>())).input(),
      options: (OptionsResponse.fromMap((map['options'] as Map).cast<String, dynamic>())).input(),
      resourceSelector: (ResourceSelectorResponse.fromMap((map['resourceSelector'] as Map).cast<String, dynamic>())).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

