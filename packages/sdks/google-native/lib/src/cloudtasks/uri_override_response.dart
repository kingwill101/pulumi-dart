// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'path_override_response.dart';
import 'query_override_response.dart';

/// URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverrideResponse {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final pulumi.Input<String> host;

  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final pulumi.Input<PathOverrideResponse> pathOverride;

  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final pulumi.Input<String> port;

  /// URI query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final pulumi.Input<QueryOverrideResponse> queryOverride;

  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final pulumi.Input<String> scheme;

  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final pulumi.Input<String> uriOverrideEnforceMode;

  /// Creates a new [UriOverrideResponse].
  /// [host] Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  /// [pathOverride] URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  /// [port] Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  /// [queryOverride] URI query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// [scheme] Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// [uriOverrideEnforceMode] URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  UriOverrideResponse({
    required this.host,
    required this.pathOverride,
    required this.port,
    required this.queryOverride,
    required this.scheme,
    required this.uriOverrideEnforceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'pathOverride':
          pulumi.Input.mapInputValue<
            PathOverrideResponse,
            Map<String, dynamic>
          >(pathOverride, (value) => value.toMap()),
      'port': port,
      'queryOverride':
          pulumi.Input.mapInputValue<
            QueryOverrideResponse,
            Map<String, dynamic>
          >(queryOverride, (value) => value.toMap()),
      'scheme': scheme,
      'uriOverrideEnforceMode': uriOverrideEnforceMode,
    };
  }

  factory UriOverrideResponse.fromMap(Map<String, dynamic> map) {
    return UriOverrideResponse(
      host: pulumi.Input.fromValue(map['host'] as String),
      pathOverride: pulumi.Input.fromValue(
        PathOverrideResponse.fromMap(
          (map['pathOverride']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as String),
      queryOverride: pulumi.Input.fromValue(
        QueryOverrideResponse.fromMap(
          (map['queryOverride']! as Map).cast<String, dynamic>(),
        ),
      ),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      uriOverrideEnforceMode: pulumi.Input.fromValue(
        map['uriOverrideEnforceMode'] as String,
      ),
    );
  }
}
