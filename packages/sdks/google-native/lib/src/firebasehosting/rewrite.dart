// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_run_rewrite.dart';

/// A [`Rewrite`](https://firebase.google.com/docs/hosting/full-config#rewrites) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  final pulumi.Input<bool>? dynamicLinks;
  /// The function to proxy requests to. Must match the exported function name exactly.
  final pulumi.Input<String>? function;
  /// Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  final pulumi.Input<String>? functionRegion;
  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final pulumi.Input<String>? glob;
  /// The URL path to rewrite the request to.
  final pulumi.Input<String>? path;
  /// The user-supplied RE2 regular expression to match against the request URL path.
  final pulumi.Input<String>? regex;
  /// The request will be forwarded to Cloud Run.
  final pulumi.Input<CloudRunRewrite>? run;

  /// Creates a new [Rewrite].
  /// [dynamicLinks] The request will be forwarded to Firebase Dynamic Links.
  /// [function] The function to proxy requests to. Must match the exported function name exactly.
  /// [functionRegion] Optional. Specify a Cloud region for rewritten Functions invocations. If not provided, defaults to us-central1.
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [path] The URL path to rewrite the request to.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [run] The request will be forwarded to Cloud Run.
  Rewrite({
    this.dynamicLinks,
    this.function,
    this.functionRegion,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicLinks': ?dynamicLinks,
      'function': ?function,
      'functionRegion': ?functionRegion,
      'glob': ?glob,
      'path': ?path,
      'regex': ?regex,
      'run': ?pulumi.Input.mapOptionalInputValue<CloudRunRewrite, Map<String, dynamic>>(run, (value) => value.toMap()),
    };
  }

  factory Rewrite.fromMap(Map<String, dynamic> map) {
    return Rewrite(
      dynamicLinks: map['dynamicLinks'] == null ? null : (map['dynamicLinks']! as bool).input(),
      function: map['function'] == null ? null : (map['function']! as String).input(),
      functionRegion: map['functionRegion'] == null ? null : (map['functionRegion']! as String).input(),
      glob: map['glob'] == null ? null : (map['glob']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      regex: map['regex'] == null ? null : (map['regex']! as String).input(),
      run: map['run'] == null ? null : (CloudRunRewrite.fromMap((map['run']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

