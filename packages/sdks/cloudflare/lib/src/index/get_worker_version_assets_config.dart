// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionAssetsConfig {
  /// Determines the redirects and rewrites of requests for HTML content.
  /// Available values: "auto-trailing-slash", "force-trailing-slash", "drop-trailing-slash", "none".
  final pulumi.Input<String> htmlHandling;
  /// Determines the response when a request does not match a static asset, and there is no Worker script.
  /// Available values: "none", "404-page", "single-page-application".
  final pulumi.Input<String> notFoundHandling;
  /// Contains a list path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  final pulumi.Input<List<String>> runWorkerFirsts;

  /// Creates a new [GetWorkerVersionAssetsConfig].
  /// [htmlHandling] Determines the redirects and rewrites of requests for HTML content.
  /// [notFoundHandling] Determines the response when a request does not match a static asset, and there is no Worker script.
  /// [runWorkerFirsts] Contains a list path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  const GetWorkerVersionAssetsConfig({
    required this.htmlHandling,
    required this.notFoundHandling,
    required this.runWorkerFirsts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'htmlHandling': htmlHandling,
      'notFoundHandling': notFoundHandling,
      'runWorkerFirsts': runWorkerFirsts,
    };
  }

  factory GetWorkerVersionAssetsConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionAssetsConfig(
      htmlHandling: pulumi.Input.fromValue(map['htmlHandling'] as String),
      notFoundHandling: pulumi.Input.fromValue(map['notFoundHandling'] as String),
      runWorkerFirsts: pulumi.Input.fromValue((map['runWorkerFirsts'] as List).cast<String>()),
    );
  }
}
