// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'path_override_response_cloudtasks_v2beta3.dart';
import 'query_override_response_cloudtasks_v2beta3.dart';

/// URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.
class UriOverrideResponseCloudtasksV2beta3 {
  /// Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  final pulumi.Input<String> host;
  /// URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  final pulumi.Input<PathOverrideResponseCloudtasksV2beta3> pathOverride;
  /// Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  final pulumi.Input<String> port;
  /// URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  final pulumi.Input<QueryOverrideResponseCloudtasksV2beta3> queryOverride;
  /// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  final pulumi.Input<String> scheme;
  /// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  final pulumi.Input<String> uriOverrideEnforceMode;

  /// Creates a new [UriOverrideResponseCloudtasksV2beta3].
  /// [host] Host override. When specified, replaces the host part of the task URL. For example, if the task URL is "https://www.google.com," and host value is set to "example.net", the overridden URI will be changed to "https://example.net." Host value cannot be an empty string (INVALID_ARGUMENT).
  /// [pathOverride] URI path. When specified, replaces the existing path of the task URL. Setting the path value to an empty string clears the URI path segment.
  /// [port] Port override. When specified, replaces the port part of the task URI. For instance, for a URI http://www.google.com/foo and port=123, the overridden URI becomes http://www.google.com:123/foo. Note that the port value must be a positive integer. Setting the port to 0 (Zero) clears the URI port.
  /// [queryOverride] URI Query. When specified, replaces the query part of the task URI. Setting the query value to an empty string clears the URI query segment.
  /// [scheme] Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
  /// [uriOverrideEnforceMode] URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
  const UriOverrideResponseCloudtasksV2beta3({
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
      'pathOverride': pulumi.Input.mapInputValue<PathOverrideResponseCloudtasksV2beta3, Map<String, dynamic>>(pathOverride, (value) => value.toMap()),
      'port': port,
      'queryOverride': pulumi.Input.mapInputValue<QueryOverrideResponseCloudtasksV2beta3, Map<String, dynamic>>(queryOverride, (value) => value.toMap()),
      'scheme': scheme,
      'uriOverrideEnforceMode': uriOverrideEnforceMode,
    };
  }

  factory UriOverrideResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return UriOverrideResponseCloudtasksV2beta3(
      host: pulumi.Input.fromValue(map['host'] as String),
      pathOverride: pulumi.Input.fromValue(PathOverrideResponseCloudtasksV2beta3.fromMap((map['pathOverride']! as Map).cast<String, dynamic>())),
      port: pulumi.Input.fromValue(map['port'] as String),
      queryOverride: pulumi.Input.fromValue(QueryOverrideResponseCloudtasksV2beta3.fromMap((map['queryOverride']! as Map).cast<String, dynamic>())),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      uriOverrideEnforceMode: pulumi.Input.fromValue(map['uriOverrideEnforceMode'] as String),
    );
  }
}

