// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_analysis_query_response.dart';

/// The query content.
class QueryContentResponse {
  /// An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  final pulumi.Input<IamPolicyAnalysisQueryResponse> iamPolicyAnalysisQuery;

  /// Creates a new [QueryContentResponse].
  /// [iamPolicyAnalysisQuery] An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  const QueryContentResponse({
    required this.iamPolicyAnalysisQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyAnalysisQuery': pulumi.Input.mapInputValue<IamPolicyAnalysisQueryResponse, Map<String, dynamic>>(iamPolicyAnalysisQuery, (value) => value.toMap()),
    };
  }

  factory QueryContentResponse.fromMap(Map<String, dynamic> map) {
    return QueryContentResponse(
      iamPolicyAnalysisQuery: pulumi.Input.fromValue(IamPolicyAnalysisQueryResponse.fromMap((map['iamPolicyAnalysisQuery']! as Map).cast<String, dynamic>())),
    );
  }
}
