// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains query options.
class Options {
  /// Optional. If true, the response will include access analysis from identities to resources via service account impersonation. This is a very expensive operation, because many derived queries will be executed. We highly recommend you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if the request analyzes for which resources user A has permission P, and there's an IAM policy states user A has iam.serviceAccounts.getAccessToken permission to a service account SA, and there's another IAM policy states service account SA has permission P to a Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another example, if the request analyzes for who has permission P to a Google Cloud folder F, and there's an IAM policy states user A has iam.serviceAccounts.actAs permission to a service account SA, and there's another IAM policy states service account SA has permission P to the Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the following permissions are considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.serviceAccounts.implicitDelegation` Default is false.
  final pulumi.Input<bool>? analyzeServiceAccountImpersonation;
  /// Optional. If true, the identities section of the result will expand any Google groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.identity_selector is specified, the identity in the result will be determined by the selector, and this flag is not allowed to set. If true, the default max expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is false.
  final pulumi.Input<bool>? expandGroups;
  /// Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource section of the result will expand any resource attached to an IAM policy to include resources lower in the resource hierarchy. For example, if the request analyzes for which resources user A has permission P, and the results include an IAM policy with P on a Google Cloud folder, the results will also include resources in that folder with permission P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the resource section of the result will expand the specified resource to include resources lower in the resource hierarchy. Only project or lower resources are supported. Folder and organization resources cannot be used together with this option. For example, if the request analyzes for which users have permission P on a Google Cloud project with this option enabled, the results will include all users who have permission P on that project or any lower resource. If true, the default max expansion per resource is 1000 for AssetService.AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][]. Default is false.
  final pulumi.Input<bool>? expandResources;
  /// Optional. If true, the access section of result will expand any roles appearing in IAM policy bindings to include their permissions. If IamPolicyAnalysisQuery.access_selector is specified, the access section of the result will be determined by the selector, and this flag is not allowed to set. Default is false.
  final pulumi.Input<bool>? expandRoles;
  /// Optional. If true, the result will output the relevant membership relationships between groups and other groups, and between groups and principals. Default is false.
  final pulumi.Input<bool>? outputGroupEdges;
  /// Optional. If true, the result will output the relevant parent/child relationships between resources. Default is false.
  final pulumi.Input<bool>? outputResourceEdges;

  /// Creates a new [Options].
  /// [analyzeServiceAccountImpersonation] Optional. If true, the response will include access analysis from identities to resources via service account impersonation. This is a very expensive operation, because many derived queries will be executed. We highly recommend you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if the request analyzes for which resources user A has permission P, and there's an IAM policy states user A has iam.serviceAccounts.getAccessToken permission to a service account SA, and there's another IAM policy states service account SA has permission P to a Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another example, if the request analyzes for who has permission P to a Google Cloud folder F, and there's an IAM policy states user A has iam.serviceAccounts.actAs permission to a service account SA, and there's another IAM policy states service account SA has permission P to the Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the following permissions are considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.serviceAccounts.implicitDelegation` Default is false.
  /// [expandGroups] Optional. If true, the identities section of the result will expand any Google groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.identity_selector is specified, the identity in the result will be determined by the selector, and this flag is not allowed to set. If true, the default max expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is false.
  /// [expandResources] Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource section of the result will expand any resource attached to an IAM policy to include resources lower in the resource hierarchy. For example, if the request analyzes for which resources user A has permission P, and the results include an IAM policy with P on a Google Cloud folder, the results will also include resources in that folder with permission P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the resource section of the result will expand the specified resource to include resources lower in the resource hierarchy. Only project or lower resources are supported. Folder and organization resources cannot be used together with this option. For example, if the request analyzes for which users have permission P on a Google Cloud project with this option enabled, the results will include all users who have permission P on that project or any lower resource. If true, the default max expansion per resource is 1000 for AssetService.AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][]. Default is false.
  /// [expandRoles] Optional. If true, the access section of result will expand any roles appearing in IAM policy bindings to include their permissions. If IamPolicyAnalysisQuery.access_selector is specified, the access section of the result will be determined by the selector, and this flag is not allowed to set. Default is false.
  /// [outputGroupEdges] Optional. If true, the result will output the relevant membership relationships between groups and other groups, and between groups and principals. Default is false.
  /// [outputResourceEdges] Optional. If true, the result will output the relevant parent/child relationships between resources. Default is false.
  Options({
    this.analyzeServiceAccountImpersonation,
    this.expandGroups,
    this.expandResources,
    this.expandRoles,
    this.outputGroupEdges,
    this.outputResourceEdges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzeServiceAccountImpersonation': ?analyzeServiceAccountImpersonation,
      'expandGroups': ?expandGroups,
      'expandResources': ?expandResources,
      'expandRoles': ?expandRoles,
      'outputGroupEdges': ?outputGroupEdges,
      'outputResourceEdges': ?outputResourceEdges,
    };
  }

  factory Options.fromMap(Map<String, dynamic> map) {
    return Options(
      analyzeServiceAccountImpersonation: map['analyzeServiceAccountImpersonation'] == null ? null : (map['analyzeServiceAccountImpersonation']! as bool).input(),
      expandGroups: map['expandGroups'] == null ? null : (map['expandGroups']! as bool).input(),
      expandResources: map['expandResources'] == null ? null : (map['expandResources']! as bool).input(),
      expandRoles: map['expandRoles'] == null ? null : (map['expandRoles']! as bool).input(),
      outputGroupEdges: map['outputGroupEdges'] == null ? null : (map['outputGroupEdges']! as bool).input(),
      outputResourceEdges: map['outputResourceEdges'] == null ? null : (map['outputResourceEdges']! as bool).input(),
    );
  }
}

