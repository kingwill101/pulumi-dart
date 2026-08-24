// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation {
  /// The API endpoint containing your business logic.
  final pulumi.Input<String> evaluateUrl;
  /// The API endpoint containing the key that Access uses to verify that the response came from your API.
  final pulumi.Input<String> keysUrl;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation].
  /// [evaluateUrl] The API endpoint containing your business logic.
  /// [keysUrl] The API endpoint containing the key that Access uses to verify that the response came from your API.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluateUrl': evaluateUrl,
      'keysUrl': keysUrl,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation(
      evaluateUrl: pulumi.Input.fromValue(map['evaluateUrl'] as String),
      keysUrl: pulumi.Input.fromValue(map['keysUrl'] as String),
    );
  }
}
