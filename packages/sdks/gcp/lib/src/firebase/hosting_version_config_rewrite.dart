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
  const HostingVersionConfigRewrite({
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
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glob: (() { final guardedValue = map['glob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      run: (() { final guardedValue = map['run']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingVersionConfigRewriteRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
