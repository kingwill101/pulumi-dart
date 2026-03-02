// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_version_config_rewrite_run.dart';

class HostingVersionConfigRewrite {
  /// The function to proxy requests to. Must match the exported function name exactly.
  final pulumi.Input<String>? function;
  /// The user-supplied glob to match against the request URL path.
  final pulumi.Input<String>? glob;
  /// The URL path to rewrite the request to.
  final pulumi.Input<String>? path;
  /// The user-supplied RE2 regular expression to match against the request URL path.
  final pulumi.Input<String>? regex;
  /// The request will be forwarded to Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<HostingVersionConfigRewriteRun>? run;

  /// Creates a new [HostingVersionConfigRewrite].
  /// [function] The function to proxy requests to. Must match the exported function name exactly.
  /// [glob] The user-supplied glob to match against the request URL path.
  /// [path] The URL path to rewrite the request to.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [run] The request will be forwarded to Cloud Run.
  HostingVersionConfigRewrite({
    this.function,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': ?function,
      'glob': ?glob,
      'path': ?path,
      'regex': ?regex,
      'run': ?pulumi.Input.mapOptionalInputValue<HostingVersionConfigRewriteRun, Map<String, dynamic>>(run, (value) => value.toMap()),
    };
  }

  factory HostingVersionConfigRewrite.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigRewrite(
      function: map['function'] == null ? null : (map['function'] as String).input(),
      glob: map['glob'] == null ? null : (map['glob'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
      run: map['run'] == null ? null : (HostingVersionConfigRewriteRun.fromMap((map['run'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

