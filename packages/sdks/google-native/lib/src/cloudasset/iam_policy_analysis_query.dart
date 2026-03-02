// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_selector.dart';
import 'condition_context.dart';
import 'identity_selector.dart';
import 'options.dart';
import 'resource_selector.dart';

/// IAM policy analysis query message.
class IamPolicyAnalysisQuery {
  /// Optional. Specifies roles or permissions for analysis. This is optional.
  final pulumi.Input<AccessSelector>? accessSelector;
  /// Optional. The hypothetical context for IAM conditions evaluation.
  final pulumi.Input<ConditionContext>? conditionContext;
  /// Optional. Specifies an identity for analysis.
  final pulumi.Input<IdentitySelector>? identitySelector;
  /// Optional. The query options.
  final pulumi.Input<Options>? options;
  /// Optional. Specifies a resource for analysis.
  final pulumi.Input<ResourceSelector>? resourceSelector;
  /// The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  final pulumi.Input<String> scope;

  /// Creates a new [IamPolicyAnalysisQuery].
  /// [accessSelector] Optional. Specifies roles or permissions for analysis. This is optional.
  /// [conditionContext] Optional. The hypothetical context for IAM conditions evaluation.
  /// [identitySelector] Optional. Specifies an identity for analysis.
  /// [options] Optional. The query options.
  /// [resourceSelector] Optional. Specifies a resource for analysis.
  /// [scope] The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as "organizations/123"), a folder number (such as "folders/123"), a project ID (such as "projects/my-project-id"), or a project number (such as "projects/12345"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  IamPolicyAnalysisQuery({
    this.accessSelector,
    this.conditionContext,
    this.identitySelector,
    this.options,
    this.resourceSelector,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSelector': ?pulumi.Input.mapOptionalInputValue<AccessSelector, Map<String, dynamic>>(accessSelector, (value) => value.toMap()),
      'conditionContext': ?pulumi.Input.mapOptionalInputValue<ConditionContext, Map<String, dynamic>>(conditionContext, (value) => value.toMap()),
      'identitySelector': ?pulumi.Input.mapOptionalInputValue<IdentitySelector, Map<String, dynamic>>(identitySelector, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<Options, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resourceSelector': ?pulumi.Input.mapOptionalInputValue<ResourceSelector, Map<String, dynamic>>(resourceSelector, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory IamPolicyAnalysisQuery.fromMap(Map<String, dynamic> map) {
    return IamPolicyAnalysisQuery(
      accessSelector: map['accessSelector'] == null ? null : (AccessSelector.fromMap((map['accessSelector'] as Map).cast<String, dynamic>())).input(),
      conditionContext: map['conditionContext'] == null ? null : (ConditionContext.fromMap((map['conditionContext'] as Map).cast<String, dynamic>())).input(),
      identitySelector: map['identitySelector'] == null ? null : (IdentitySelector.fromMap((map['identitySelector'] as Map).cast<String, dynamic>())).input(),
      options: map['options'] == null ? null : (Options.fromMap((map['options'] as Map).cast<String, dynamic>())).input(),
      resourceSelector: map['resourceSelector'] == null ? null : (ResourceSelector.fromMap((map['resourceSelector'] as Map).cast<String, dynamic>())).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

