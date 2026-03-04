// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'path_override.dart';
import 'query_override.dart';
import 'uri_override_scheme.dart';
import 'uri_override_uri_override_enforce_mode.dart';

/// URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverride {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final pulumi.Input<String>? host;

  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final pulumi.Input<PathOverride>? pathOverride;

  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final pulumi.Input<String>? port;

  /// URI query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final pulumi.Input<QueryOverride>? queryOverride;

  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final pulumi.Input<UriOverrideScheme>? scheme;

  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final pulumi.Input<UriOverrideUriOverrideEnforceMode>? uriOverrideEnforceMode;

  /// Creates a new [UriOverride].
  /// [host] Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  /// [pathOverride] URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  /// [port] Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  /// [queryOverride] URI query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// [scheme] Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// [uriOverrideEnforceMode] URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  UriOverride({
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
      'pathOverride':
          ?pulumi.Input.mapOptionalInputValue<
            PathOverride,
            Map<String, dynamic>
          >(pathOverride, (value) => value.toMap()),
      'port': ?port,
      'queryOverride':
          ?pulumi.Input.mapOptionalInputValue<
            QueryOverride,
            Map<String, dynamic>
          >(queryOverride, (value) => value.toMap()),
      'scheme': ?pulumi.Input.mapOptionalInputValue<UriOverrideScheme, String>(
        scheme,
        (value) => value.wireValue,
      ),
      'uriOverrideEnforceMode':
          ?pulumi.Input.mapOptionalInputValue<
            UriOverrideUriOverrideEnforceMode,
            String
          >(uriOverrideEnforceMode, (value) => value.wireValue),
    };
  }

  factory UriOverride.fromMap(Map<String, dynamic> map) {
    return UriOverride(
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pathOverride: (() {
        final guardedValue = map['pathOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PathOverride.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryOverride: (() {
        final guardedValue = map['queryOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueryOverride.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      scheme: (() {
        final guardedValue = map['scheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UriOverrideScheme.fromValue(guardedValue as String),
        );
      })(),
      uriOverrideEnforceMode: (() {
        final guardedValue = map['uriOverrideEnforceMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UriOverrideUriOverrideEnforceMode.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
