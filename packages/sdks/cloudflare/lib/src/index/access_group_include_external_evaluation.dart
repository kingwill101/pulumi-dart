// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeExternalEvaluation {
  /// The API endpoint containing your business logic.
  final pulumi.Input<String> evaluateUrl;
  /// The API endpoint containing the key that Access uses to verify that the response came from your API.
  final pulumi.Input<String> keysUrl;

  /// Creates a new [AccessGroupIncludeExternalEvaluation].
  /// [evaluateUrl] The API endpoint containing your business logic.
  /// [keysUrl] The API endpoint containing the key that Access uses to verify that the response came from your API.
  const AccessGroupIncludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluateUrl': evaluateUrl,
      'keysUrl': keysUrl,
    };
  }

  factory AccessGroupIncludeExternalEvaluation.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeExternalEvaluation(
      evaluateUrl: pulumi.Input.fromValue(map['evaluateUrl'] as String),
      keysUrl: pulumi.Input.fromValue(map['keysUrl'] as String),
    );
  }
}
