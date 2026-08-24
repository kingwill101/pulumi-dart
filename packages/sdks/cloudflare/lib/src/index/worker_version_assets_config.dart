// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionAssetsConfig {
  /// Determines the redirects and rewrites of requests for HTML content.
  /// Available values: "auto-trailing-slash", "force-trailing-slash", "drop-trailing-slash", "none".
  final pulumi.Input<String?>? htmlHandling;
  /// Determines the response when a request does not match a static asset, and there is no Worker script.
  /// Available values: "none", "404-page", "single-page-application".
  final pulumi.Input<String?>? notFoundHandling;
  /// When a boolean true, requests will always invoke the Worker script. Otherwise, attempt to serve an asset matching the request, falling back to the Worker script. When a list of strings, contains path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  final pulumi.Input<dynamic>? runWorkerFirst;

  /// Creates a new [WorkerVersionAssetsConfig].
  /// [htmlHandling] Determines the redirects and rewrites of requests for HTML content.
  /// [notFoundHandling] Determines the response when a request does not match a static asset, and there is no Worker script.
  /// [runWorkerFirst] When a boolean true, requests will always invoke the Worker script. Otherwise, attempt to serve an asset matching the request, falling back to the Worker script. When a list of strings, contains path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  const WorkerVersionAssetsConfig({
    this.htmlHandling,
    this.notFoundHandling,
    this.runWorkerFirst,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'htmlHandling': ?htmlHandling,
      'notFoundHandling': ?notFoundHandling,
      'runWorkerFirst': ?runWorkerFirst,
    };
  }

  factory WorkerVersionAssetsConfig.fromMap(Map<String, dynamic> map) {
    return WorkerVersionAssetsConfig(
      htmlHandling: (() { final guardedValue = map['htmlHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notFoundHandling: (() { final guardedValue = map['notFoundHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runWorkerFirst: (() { final guardedValue = map['runWorkerFirst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
