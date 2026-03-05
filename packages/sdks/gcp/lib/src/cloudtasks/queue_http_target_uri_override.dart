// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_http_target_uri_override_path_override.dart';
import 'queue_http_target_uri_override_query_override.dart';

class QueueHttpTargetUriOverride {
  /// Host override.
  /// When specified, replaces the host part of the task URL.
  /// For example, if the task URL is "https://www.google.com", and host value
  /// is set to "example.net", the overridden URI will be changed to "https://example.net".
  /// Host value cannot be an empty string (INVALID_ARGUMENT).
  final pulumi.Input<String>? host;
  /// URI path.
  /// When specified, replaces the existing path of the task URL.
  /// Setting the path value to an empty string clears the URI path segment.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetUriOverridePathOverride>? pathOverride;
  /// Port override.
  /// When specified, replaces the port part of the task URI.
  /// For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo.
  /// Note that the port value must be a positive integer.
  /// Setting the port to 0 (Zero) clears the URI port.
  final pulumi.Input<String>? port;
  /// URI query.
  /// When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetUriOverrideQueryOverride>? queryOverride;
  /// Scheme override.
  /// When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// Possible values are: `HTTP`, `HTTPS`.
  final pulumi.Input<String>? scheme;
  /// URI Override Enforce Mode
  /// When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  /// Possible values are: `ALWAYS`, `IF_NOT_EXISTS`.
  final pulumi.Input<String>? uriOverrideEnforceMode;

  /// Creates a new [QueueHttpTargetUriOverride].
  /// [host] Host override.
  /// [pathOverride] URI path.
  /// [port] Port override.
  /// [queryOverride] URI query.
  /// [scheme] Scheme override.
  /// [uriOverrideEnforceMode] URI Override Enforce Mode
  QueueHttpTargetUriOverride({
    this.host,
    this.pathOverride,
    this.port,
    this.queryOverride,
    this.scheme,
    this.uriOverrideEnforceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'pathOverride': ?pulumi.Input.mapOptionalInputValue<QueueHttpTargetUriOverridePathOverride, Map<String, dynamic>>(pathOverride, (value) => value.toMap()),
      'port': ?port,
      'queryOverride': ?pulumi.Input.mapOptionalInputValue<QueueHttpTargetUriOverrideQueryOverride, Map<String, dynamic>>(queryOverride, (value) => value.toMap()),
      'scheme': ?scheme,
      'uriOverrideEnforceMode': ?uriOverrideEnforceMode,
    };
  }

  factory QueueHttpTargetUriOverride.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetUriOverride(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathOverride: (() { final guardedValue = map['pathOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTargetUriOverridePathOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryOverride: (() { final guardedValue = map['queryOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTargetUriOverrideQueryOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uriOverrideEnforceMode: (() { final guardedValue = map['uriOverrideEnforceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

