// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// K8sBetaAPIConfig , configuration for beta APIs
class K8sBetaAPIConfigResponse {
  /// Enabled k8s beta APIs.
  final pulumi.Input<List<String>> enabledApis;

  /// Creates a new [K8sBetaAPIConfigResponse].
  /// [enabledApis] Enabled k8s beta APIs.
  K8sBetaAPIConfigResponse({required this.enabledApis});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabledApis': enabledApis};
  }

  factory K8sBetaAPIConfigResponse.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfigResponse(
      enabledApis: pulumi.Input.fromValue(
        (map['enabledApis'] as List).cast<String>(),
      ),
    );
  }
}
