// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeExternalEvaluation {
  /// The API endpoint containing your business logic.
  final pulumi.Input<String> evaluateUrl;
  /// The API endpoint containing the key that Access uses to verify that the response came from your API.
  final pulumi.Input<String> keysUrl;

  /// Creates a new [AccessPolicyExcludeExternalEvaluation].
  /// [evaluateUrl] The API endpoint containing your business logic.
  /// [keysUrl] The API endpoint containing the key that Access uses to verify that the response came from your API.
  const AccessPolicyExcludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluateUrl': evaluateUrl,
      'keysUrl': keysUrl,
    };
  }

  factory AccessPolicyExcludeExternalEvaluation.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeExternalEvaluation(
      evaluateUrl: pulumi.Input.fromValue(map['evaluateUrl'] as String),
      keysUrl: pulumi.Input.fromValue(map['keysUrl'] as String),
    );
  }
}
