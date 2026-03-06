// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'path_override_cloudtasks_v2beta3.dart';
import 'query_override_cloudtasks_v2beta3.dart';
import 'uri_override_scheme_cloudtasks_v2beta3.dart';
import 'uri_override_uri_override_enforce_mode_cloudtasks_v2beta3.dart';

/// URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverrideCloudtasksV2beta3 {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final pulumi.Input<String>? host;
  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final pulumi.Input<PathOverrideCloudtasksV2beta3>? pathOverride;
  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final pulumi.Input<String>? port;
  /// URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final pulumi.Input<QueryOverrideCloudtasksV2beta3>? queryOverride;
  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final pulumi.Input<UriOverrideSchemeCloudtasksV2beta3>? scheme;
  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final pulumi.Input<UriOverrideUriOverrideEnforceModeCloudtasksV2beta3>? uriOverrideEnforceMode;

  /// Creates a new [UriOverrideCloudtasksV2beta3].
  /// [host] Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  /// [pathOverride] URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  /// [port] Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  /// [queryOverride] URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// [scheme] Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// [uriOverrideEnforceMode] URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  const UriOverrideCloudtasksV2beta3({
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
      'pathOverride': ?pulumi.Input.mapOptionalInputValue<PathOverrideCloudtasksV2beta3, Map<String, dynamic>>(pathOverride, (value) => value.toMap()),
      'port': ?port,
      'queryOverride': ?pulumi.Input.mapOptionalInputValue<QueryOverrideCloudtasksV2beta3, Map<String, dynamic>>(queryOverride, (value) => value.toMap()),
      'scheme': ?pulumi.Input.mapOptionalInputValue<UriOverrideSchemeCloudtasksV2beta3, String>(scheme, (value) => value.wireValue),
      'uriOverrideEnforceMode': ?pulumi.Input.mapOptionalInputValue<UriOverrideUriOverrideEnforceModeCloudtasksV2beta3, String>(uriOverrideEnforceMode, (value) => value.wireValue),
    };
  }

  factory UriOverrideCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return UriOverrideCloudtasksV2beta3(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathOverride: (() { final guardedValue = map['pathOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PathOverrideCloudtasksV2beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryOverride: (() { final guardedValue = map['queryOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryOverrideCloudtasksV2beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UriOverrideSchemeCloudtasksV2beta3.fromValue(guardedValue as String)); })(),
      uriOverrideEnforceMode: (() { final guardedValue = map['uriOverrideEnforceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UriOverrideUriOverrideEnforceModeCloudtasksV2beta3.fromValue(guardedValue as String)); })(),
    );
  }
}

