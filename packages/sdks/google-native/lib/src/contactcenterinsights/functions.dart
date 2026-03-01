import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_analysis_args.dart';
import 'get_analysis_result.dart';
import 'get_conversation_args.dart';
import 'get_conversation_result.dart';
import 'get_issue_model_args.dart';
import 'get_issue_model_result.dart';
import 'get_phrase_matcher_args.dart';
import 'get_phrase_matcher_result.dart';
import 'get_view_args.dart';
import 'get_view_result.dart';

/// Gets an analysis.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenterinsights_v1_get_analysis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnalysisResult> getAnalysis(
  GetAnalysisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getAnalysis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnalysisResult.fromMap(result);
}

/// Gets a conversation.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenterinsights_v1_get_conversation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConversationResult> getConversation(
  GetConversationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationResult.fromMap(result);
}

/// Gets an issue model.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenterinsights_v1_get_issue_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIssueModelResult> getIssueModel(
  GetIssueModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getIssueModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIssueModelResult.fromMap(result);
}

/// Gets a phrase matcher.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenterinsights_v1_get_phrase_matcher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPhraseMatcherResult> getPhraseMatcher(
  GetPhraseMatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getPhraseMatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhraseMatcherResult.fromMap(result);
}

/// Gets a view.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenterinsights_v1_get_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetViewResult> getView(
  GetViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewResult.fromMap(result);
}
