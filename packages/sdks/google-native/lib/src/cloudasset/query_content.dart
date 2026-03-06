// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_analysis_query.dart';

/// The query content.
class QueryContent {
  /// An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  final pulumi.Input<IamPolicyAnalysisQuery>? iamPolicyAnalysisQuery;

  /// Creates a new [QueryContent].
  /// [iamPolicyAnalysisQuery] An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.
  const QueryContent({
    this.iamPolicyAnalysisQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyAnalysisQuery': ?pulumi.Input.mapOptionalInputValue<IamPolicyAnalysisQuery, Map<String, dynamic>>(iamPolicyAnalysisQuery, (value) => value.toMap()),
    };
  }

  factory QueryContent.fromMap(Map<String, dynamic> map) {
    return QueryContent(
      iamPolicyAnalysisQuery: (() { final guardedValue = map['iamPolicyAnalysisQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IamPolicyAnalysisQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

