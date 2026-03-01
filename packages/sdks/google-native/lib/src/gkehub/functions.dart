import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_binding_args.dart';
import 'get_binding_gkehub_v1alpha_args.dart';
import 'get_binding_gkehub_v1alpha_result.dart';
import 'get_binding_gkehub_v1beta_args.dart';
import 'get_binding_gkehub_v1beta_result.dart';
import 'get_binding_result.dart';
import 'get_feature_args.dart';
import 'get_feature_gkehub_v1alpha_args.dart';
import 'get_feature_gkehub_v1alpha_result.dart';
import 'get_feature_gkehub_v1beta_args.dart';
import 'get_feature_gkehub_v1beta_result.dart';
import 'get_feature_iam_policy_args.dart';
import 'get_feature_iam_policy_gkehub_v1alpha_args.dart';
import 'get_feature_iam_policy_gkehub_v1alpha_result.dart';
import 'get_feature_iam_policy_gkehub_v1beta_args.dart';
import 'get_feature_iam_policy_gkehub_v1beta_result.dart';
import 'get_feature_iam_policy_result.dart';
import 'get_feature_result.dart';
import 'get_fleet_args.dart';
import 'get_fleet_gkehub_v1alpha_args.dart';
import 'get_fleet_gkehub_v1alpha_result.dart';
import 'get_fleet_gkehub_v1beta_args.dart';
import 'get_fleet_gkehub_v1beta_result.dart';
import 'get_fleet_result.dart';
import 'get_membership_args.dart';
import 'get_membership_gkehub_v1alpha2_args.dart';
import 'get_membership_gkehub_v1alpha2_result.dart';
import 'get_membership_gkehub_v1alpha_args.dart';
import 'get_membership_gkehub_v1alpha_result.dart';
import 'get_membership_gkehub_v1beta1_args.dart';
import 'get_membership_gkehub_v1beta1_result.dart';
import 'get_membership_gkehub_v1beta_args.dart';
import 'get_membership_gkehub_v1beta_result.dart';
import 'get_membership_iam_policy_args.dart';
import 'get_membership_iam_policy_gkehub_v1alpha2_args.dart';
import 'get_membership_iam_policy_gkehub_v1alpha2_result.dart';
import 'get_membership_iam_policy_gkehub_v1alpha_args.dart';
import 'get_membership_iam_policy_gkehub_v1alpha_result.dart';
import 'get_membership_iam_policy_gkehub_v1beta1_args.dart';
import 'get_membership_iam_policy_gkehub_v1beta1_result.dart';
import 'get_membership_iam_policy_gkehub_v1beta_args.dart';
import 'get_membership_iam_policy_gkehub_v1beta_result.dart';
import 'get_membership_iam_policy_result.dart';
import 'get_membership_rbac_role_binding_args.dart';
import 'get_membership_rbac_role_binding_gkehub_v1beta_args.dart';
import 'get_membership_rbac_role_binding_gkehub_v1beta_result.dart';
import 'get_membership_rbac_role_binding_result.dart';
import 'get_membership_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_gkehub_v1alpha_args.dart';
import 'get_namespace_gkehub_v1alpha_result.dart';
import 'get_namespace_gkehub_v1beta_args.dart';
import 'get_namespace_gkehub_v1beta_result.dart';
import 'get_namespace_result.dart';
import 'get_rbacrolebinding_args.dart';
import 'get_rbacrolebinding_result.dart';
import 'get_scope_args.dart';
import 'get_scope_gkehub_v1alpha_args.dart';
import 'get_scope_gkehub_v1alpha_result.dart';
import 'get_scope_gkehub_v1beta_args.dart';
import 'get_scope_gkehub_v1beta_result.dart';
import 'get_scope_iam_policy_args.dart';
import 'get_scope_iam_policy_gkehub_v1alpha_args.dart';
import 'get_scope_iam_policy_gkehub_v1alpha_result.dart';
import 'get_scope_iam_policy_gkehub_v1beta_args.dart';
import 'get_scope_iam_policy_gkehub_v1beta_result.dart';
import 'get_scope_iam_policy_result.dart';
import 'get_scope_rbac_role_binding_args.dart';
import 'get_scope_rbac_role_binding_gkehub_v1beta_args.dart';
import 'get_scope_rbac_role_binding_gkehub_v1beta_result.dart';
import 'get_scope_rbac_role_binding_result.dart';
import 'get_scope_result.dart';

/// Returns the details of a MembershipBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBindingResult> getBinding(
  GetBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingResult.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureResult> getFeature(
  GetFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_feature_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureIamPolicyResult> getFeatureIamPolicy(
  GetFeatureIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getFeatureIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyResult.fromMap(result);
}

/// Returns the details of a fleet.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}

/// Gets the details of a Membership.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_membership_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_membership_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyResult> getMembershipIamPolicy(
  GetMembershipIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyResult.fromMap(result);
}

/// Returns the details of a fleet namespace.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Returns the details of a Scope RBACRoleBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_rbacrolebinding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRbacrolebindingResult> getRbacrolebinding(
  GetRbacrolebindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getRbacrolebinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRbacrolebindingResult.fromMap(result);
}

/// Returns the details of a Scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeResult> getScope(
  GetScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1_get_scope_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeIamPolicyResult> getScopeIamPolicy(
  GetScopeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyResult.fromMap(result);
}

/// Gets the details of a Membership.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha2_get_membership_gkehub_v1alpha2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipGkehubV1alpha2Result> getMembershipGkehubV1alpha2(
  GetMembershipGkehubV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1alpha2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha2_get_membership_iam_policy_gkehub_v1alpha2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyGkehubV1alpha2Result> getMembershipIamPolicyGkehubV1alpha2(
  GetMembershipIamPolicyGkehubV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha2:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1alpha2Result.fromMap(result);
}

/// Returns the details of a MembershipBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_binding_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBindingGkehubV1alphaResult> getBindingGkehubV1alpha(
  GetBindingGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingGkehubV1alphaResult.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_feature_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGkehubV1alphaResult> getFeatureGkehubV1alpha(
  GetFeatureGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGkehubV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_feature_iam_policy_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureIamPolicyGkehubV1alphaResult> getFeatureIamPolicyGkehubV1alpha(
  GetFeatureIamPolicyGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFeatureIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyGkehubV1alphaResult.fromMap(result);
}

/// Returns the details of a fleet.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_fleet_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetGkehubV1alphaResult> getFleetGkehubV1alpha(
  GetFleetGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetGkehubV1alphaResult.fromMap(result);
}

/// Gets the details of a Membership.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_membership_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipGkehubV1alphaResult> getMembershipGkehubV1alpha(
  GetMembershipGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_membership_iam_policy_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyGkehubV1alphaResult> getMembershipIamPolicyGkehubV1alpha(
  GetMembershipIamPolicyGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1alphaResult.fromMap(result);
}

/// Returns the details of a Membership RBACRoleBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_membership_rbac_role_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipRbacRoleBindingResult> getMembershipRbacRoleBinding(
  GetMembershipRbacRoleBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getMembershipRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipRbacRoleBindingResult.fromMap(result);
}

/// Returns the details of a fleet namespace.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_namespace_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceGkehubV1alphaResult> getNamespaceGkehubV1alpha(
  GetNamespaceGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceGkehubV1alphaResult.fromMap(result);
}

/// Returns the details of a Scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_scope_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeGkehubV1alphaResult> getScopeGkehubV1alpha(
  GetScopeGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeGkehubV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_scope_iam_policy_gkehub_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeIamPolicyGkehubV1alphaResult> getScopeIamPolicyGkehubV1alpha(
  GetScopeIamPolicyGkehubV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyGkehubV1alphaResult.fromMap(result);
}

/// Returns the details of a Scope RBACRoleBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1alpha_get_scope_rbac_role_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeRbacRoleBindingResult> getScopeRbacRoleBinding(
  GetScopeRbacRoleBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getScopeRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeRbacRoleBindingResult.fromMap(result);
}

/// Gets the details of a Membership.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta1_get_membership_gkehub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipGkehubV1beta1Result> getMembershipGkehubV1beta1(
  GetMembershipGkehubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta1_get_membership_iam_policy_gkehub_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyGkehubV1beta1Result> getMembershipIamPolicyGkehubV1beta1(
  GetMembershipIamPolicyGkehubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta1:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1beta1Result.fromMap(result);
}

/// Returns the details of a MembershipBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_binding_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBindingGkehubV1betaResult> getBindingGkehubV1beta(
  GetBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingGkehubV1betaResult.fromMap(result);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_feature_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGkehubV1betaResult> getFeatureGkehubV1beta(
  GetFeatureGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGkehubV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_feature_iam_policy_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureIamPolicyGkehubV1betaResult> getFeatureIamPolicyGkehubV1beta(
  GetFeatureIamPolicyGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFeatureIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyGkehubV1betaResult.fromMap(result);
}

/// Returns the details of a fleet.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_fleet_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetGkehubV1betaResult> getFleetGkehubV1beta(
  GetFleetGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetGkehubV1betaResult.fromMap(result);
}

/// Gets the details of a Membership.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_membership_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipGkehubV1betaResult> getMembershipGkehubV1beta(
  GetMembershipGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipGkehubV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_membership_iam_policy_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipIamPolicyGkehubV1betaResult> getMembershipIamPolicyGkehubV1beta(
  GetMembershipIamPolicyGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembershipIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipIamPolicyGkehubV1betaResult.fromMap(result);
}

/// Returns the details of a Membership RBACRoleBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_membership_rbac_role_binding_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipRbacRoleBindingGkehubV1betaResult> getMembershipRbacRoleBindingGkehubV1beta(
  GetMembershipRbacRoleBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getMembershipRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipRbacRoleBindingGkehubV1betaResult.fromMap(result);
}

/// Returns the details of a fleet namespace.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_namespace_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceGkehubV1betaResult> getNamespaceGkehubV1beta(
  GetNamespaceGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceGkehubV1betaResult.fromMap(result);
}

/// Returns the details of a Scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_scope_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeGkehubV1betaResult> getScopeGkehubV1beta(
  GetScopeGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeGkehubV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_scope_iam_policy_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeIamPolicyGkehubV1betaResult> getScopeIamPolicyGkehubV1beta(
  GetScopeIamPolicyGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeIamPolicyGkehubV1betaResult.fromMap(result);
}

/// Returns the details of a Scope RBACRoleBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_gkehub_v1beta_get_scope_rbac_role_binding_gkehub_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeRbacRoleBindingGkehubV1betaResult> getScopeRbacRoleBindingGkehubV1beta(
  GetScopeRbacRoleBindingGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getScopeRbacRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeRbacRoleBindingGkehubV1betaResult.fromMap(result);
}
