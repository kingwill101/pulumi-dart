// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptAssetsConfig {
  /// The contents of a _headers file (used to attach custom headers on asset responses).
  final pulumi.Input<String?>? headers;
  /// Determines the redirects and rewrites of requests for HTML content.
  /// Available values: "auto-trailing-slash", "force-trailing-slash", "drop-trailing-slash", "none".
  final pulumi.Input<String?>? htmlHandling;
  /// Determines the response when a request does not match a static asset, and there is no Worker script.
  /// Available values: "none", "404-page", "single-page-application".
  final pulumi.Input<String?>? notFoundHandling;
  /// The contents of a _redirects file (used to apply redirects or proxy paths ahead of asset serving).
  final pulumi.Input<String?>? redirects;
  /// When a boolean true, requests will always invoke the Worker script. Otherwise, attempt to serve an asset matching the request, falling back to the Worker script. When a list of strings, contains path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  final pulumi.Input<dynamic>? runWorkerFirst;
  /// When true and the incoming request matches an asset, that will be served instead of invoking the Worker script. When false, requests will always invoke the Worker script.
  final pulumi.Input<bool?>? serveDirectly;

  /// Creates a new [WorkerScriptAssetsConfig].
  /// [headers] The contents of a _headers file (used to attach custom headers on asset responses).
  /// [htmlHandling] Determines the redirects and rewrites of requests for HTML content.
  /// [notFoundHandling] Determines the response when a request does not match a static asset, and there is no Worker script.
  /// [redirects] The contents of a _redirects file (used to apply redirects or proxy paths ahead of asset serving).
  /// [runWorkerFirst] When a boolean true, requests will always invoke the Worker script. Otherwise, attempt to serve an asset matching the request, falling back to the Worker script. When a list of strings, contains path rules to control routing to either the Worker or assets. Glob (*) and negative (!) rules are supported. Rules must start with either '/' or '!/'. At least one non-negative rule must be provided, and negative rules have higher precedence than non-negative rules.
  /// [serveDirectly] When true and the incoming request matches an asset, that will be served instead of invoking the Worker script. When false, requests will always invoke the Worker script.
  const WorkerScriptAssetsConfig({
    this.headers,
    this.htmlHandling,
    this.notFoundHandling,
    this.redirects,
    this.runWorkerFirst,
    this.serveDirectly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
      'htmlHandling': ?htmlHandling,
      'notFoundHandling': ?notFoundHandling,
      'redirects': ?redirects,
      'runWorkerFirst': ?runWorkerFirst,
      'serveDirectly': ?serveDirectly,
    };
  }

  factory WorkerScriptAssetsConfig.fromMap(Map<String, dynamic> map) {
    return WorkerScriptAssetsConfig(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      htmlHandling: (() { final guardedValue = map['htmlHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notFoundHandling: (() { final guardedValue = map['notFoundHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirects: (() { final guardedValue = map['redirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runWorkerFirst: (() { final guardedValue = map['runWorkerFirst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serveDirectly: (() { final guardedValue = map['serveDirectly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
