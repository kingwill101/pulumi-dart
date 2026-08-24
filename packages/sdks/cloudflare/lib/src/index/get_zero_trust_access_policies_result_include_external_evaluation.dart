// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation {
  /// The API endpoint containing your business logic.
  final pulumi.Input<String> evaluateUrl;
  /// The API endpoint containing the key that Access uses to verify that the response came from your API.
  final pulumi.Input<String> keysUrl;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation].
  /// [evaluateUrl] The API endpoint containing your business logic.
  /// [keysUrl] The API endpoint containing the key that Access uses to verify that the response came from your API.
  const GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluateUrl': evaluateUrl,
      'keysUrl': keysUrl,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeExternalEvaluation(
      evaluateUrl: pulumi.Input.fromValue(map['evaluateUrl'] as String),
      keysUrl: pulumi.Input.fromValue(map['keysUrl'] as String),
    );
  }
}
