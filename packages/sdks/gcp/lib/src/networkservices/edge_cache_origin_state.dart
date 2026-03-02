// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_origin_aws_v4_authentication.dart';
import 'edge_cache_origin_flex_shielding.dart';
import 'edge_cache_origin_origin_override_action.dart';
import 'edge_cache_origin_origin_redirect.dart';
import 'edge_cache_origin_timeout.dart';

/// Input properties used for looking up and filtering EdgeCacheOrigin resources.
class EdgeCacheOriginState {
  /// Enable AWS Signature Version 4 origin authentication.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginAwsV4Authentication>? awsV4Authentication;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The Origin resource to try when the current origin cannot be reached.
  /// After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.
  /// The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
  /// A reference to a Topic resource.
  final pulumi.Input<String>? failoverOrigin;
  /// The FlexShieldingOptions to be used for all routes to this origin.
  /// If not set, defaults to a global caching layer in front of the origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginFlexShielding>? flexShielding;
  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.
  /// Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
  /// retryConditions and failoverOrigin to control its own cache fill failures.
  /// The total number of allowed attempts to cache fill across this and failover origins is limited to four.
  /// The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.
  /// The last valid, non-retried response from all origins will be returned to the client.
  /// If no origin returns a valid response, an HTTP 502 will be returned to the client.
  /// Defaults to 1. Must be a value greater than 0 and less than 4.
  final pulumi.Input<int>? maxAttempts;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;
  /// A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.
  /// This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname
  /// When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
  /// If a Cloud Storage bucket is provided, it must be in the canonical "gs://bucketname" format. Other forms, such as "storage.googleapis.com", will be rejected.
  final pulumi.Input<String>? originAddress;
  /// The override actions, including url rewrites and header
  /// additions, for requests that use this origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginOriginOverrideAction>? originOverrideAction;
  /// Follow redirects from this origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginOriginRedirect>? originRedirect;
  /// The port to connect to the origin on.
  /// Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.
  /// When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server.
  /// Possible values are: `HTTP2`, `HTTPS`, `HTTP`.
  final pulumi.Input<String>? protocol;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies one or more retry conditions for the configured origin.
  /// If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
  /// the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.
  /// The default retryCondition is "CONNECT_FAILURE".
  /// retryConditions apply to this origin, and not subsequent failoverOrigin(s),
  /// which may specify their own retryConditions and maxAttempts.
  /// Valid values are:
  /// - CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
  /// - HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
  /// - GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
  /// - RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
  /// - NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
  /// - FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden).
  /// Each value may be one of: `CONNECT_FAILURE`, `HTTP_5XX`, `GATEWAY_ERROR`, `RETRIABLE_4XX`, `NOT_FOUND`, `FORBIDDEN`.
  final pulumi.Input<List<String>>? retryConditions;
  /// The connection and HTTP timeout configuration for this origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginTimeout>? timeout;

  /// Creates a new [EdgeCacheOriginState].
  /// [awsV4Authentication] Enable AWS Signature Version 4 origin authentication.
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [failoverOrigin] The Origin resource to try when the current origin cannot be reached.
  /// [flexShielding] The FlexShieldingOptions to be used for all routes to this origin.
  /// [labels] Set of label tags associated with the EdgeCache resource.
  /// [maxAttempts] The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [originAddress] A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.
  /// [originOverrideAction] The override actions, including url rewrites and header
  /// [originRedirect] Follow redirects from this origin.
  /// [port] The port to connect to the origin on.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [retryConditions] Specifies one or more retry conditions for the configured origin.
  /// [timeout] The connection and HTTP timeout configuration for this origin.
  EdgeCacheOriginState({
    this.awsV4Authentication,
    this.description,
    this.effectiveLabels,
    this.failoverOrigin,
    this.flexShielding,
    this.labels,
    this.maxAttempts,
    this.name,
    this.originAddress,
    this.originOverrideAction,
    this.originRedirect,
    this.port,
    this.project,
    this.protocol,
    this.pulumiLabels,
    this.retryConditions,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsV4Authentication': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginAwsV4Authentication, Map<String, dynamic>>(awsV4Authentication, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'failoverOrigin': ?failoverOrigin,
      'flexShielding': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginFlexShielding, Map<String, dynamic>>(flexShielding, (value) => value.toMap()),
      'labels': ?labels,
      'maxAttempts': ?maxAttempts,
      'name': ?name,
      'originAddress': ?originAddress,
      'originOverrideAction': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginOriginOverrideAction, Map<String, dynamic>>(originOverrideAction, (value) => value.toMap()),
      'originRedirect': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginOriginRedirect, Map<String, dynamic>>(originRedirect, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'protocol': ?protocol,
      'pulumiLabels': ?pulumiLabels,
      'retryConditions': ?retryConditions,
      'timeout': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory EdgeCacheOriginState.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginState(
      awsV4Authentication: map['awsV4Authentication'] == null ? null : (EdgeCacheOriginAwsV4Authentication.fromMap((map['awsV4Authentication']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      failoverOrigin: map['failoverOrigin'] == null ? null : (map['failoverOrigin']! as String).input(),
      flexShielding: map['flexShielding'] == null ? null : (EdgeCacheOriginFlexShielding.fromMap((map['flexShielding']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      maxAttempts: map['maxAttempts'] == null ? null : (map['maxAttempts']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      originAddress: map['originAddress'] == null ? null : (map['originAddress']! as String).input(),
      originOverrideAction: map['originOverrideAction'] == null ? null : (EdgeCacheOriginOriginOverrideAction.fromMap((map['originOverrideAction']! as Map).cast<String, dynamic>())).input(),
      originRedirect: map['originRedirect'] == null ? null : (EdgeCacheOriginOriginRedirect.fromMap((map['originRedirect']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      retryConditions: map['retryConditions'] == null ? null : ((map['retryConditions']! as List).cast<String>()).input(),
      timeout: map['timeout'] == null ? null : (EdgeCacheOriginTimeout.fromMap((map['timeout']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

