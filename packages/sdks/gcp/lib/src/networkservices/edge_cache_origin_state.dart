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
    pulumi.Output<EdgeCacheOriginAwsV4Authentication>? awsV4Authentication,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? failoverOrigin,
    pulumi.Output<EdgeCacheOriginFlexShielding>? flexShielding,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? maxAttempts,
    pulumi.Output<String>? name,
    pulumi.Output<String>? originAddress,
    pulumi.Output<EdgeCacheOriginOriginOverrideAction>? originOverrideAction,
    pulumi.Output<EdgeCacheOriginOriginRedirect>? originRedirect,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<String>? protocol,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<String>>? retryConditions,
    pulumi.Output<EdgeCacheOriginTimeout>? timeout,
  }) :
      awsV4Authentication = pulumi.Input.asOptionalInput<EdgeCacheOriginAwsV4Authentication>(awsV4Authentication),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      failoverOrigin = pulumi.Input.asOptionalInput<String>(failoverOrigin),
      flexShielding = pulumi.Input.asOptionalInput<EdgeCacheOriginFlexShielding>(flexShielding),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maxAttempts = pulumi.Input.asOptionalInput<int>(maxAttempts),
      name = pulumi.Input.asOptionalInput<String>(name),
      originAddress = pulumi.Input.asOptionalInput<String>(originAddress),
      originOverrideAction = pulumi.Input.asOptionalInput<EdgeCacheOriginOriginOverrideAction>(originOverrideAction),
      originRedirect = pulumi.Input.asOptionalInput<EdgeCacheOriginOriginRedirect>(originRedirect),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      retryConditions = pulumi.Input.asOptionalInput<List<String>>(retryConditions),
      timeout = pulumi.Input.asOptionalInput<EdgeCacheOriginTimeout>(timeout);

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
      awsV4Authentication: map['awsV4Authentication'] == null ? null : pulumi.Output.create<EdgeCacheOriginAwsV4Authentication>(EdgeCacheOriginAwsV4Authentication.fromMap((map['awsV4Authentication'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      failoverOrigin: map['failoverOrigin'] == null ? null : pulumi.Output.create<String>(map['failoverOrigin'] as String),
      flexShielding: map['flexShielding'] == null ? null : pulumi.Output.create<EdgeCacheOriginFlexShielding>(EdgeCacheOriginFlexShielding.fromMap((map['flexShielding'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maxAttempts: map['maxAttempts'] == null ? null : pulumi.Output.create<int>(map['maxAttempts'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      originAddress: map['originAddress'] == null ? null : pulumi.Output.create<String>(map['originAddress'] as String),
      originOverrideAction: map['originOverrideAction'] == null ? null : pulumi.Output.create<EdgeCacheOriginOriginOverrideAction>(EdgeCacheOriginOriginOverrideAction.fromMap((map['originOverrideAction'] as Map).cast<String, dynamic>())),
      originRedirect: map['originRedirect'] == null ? null : pulumi.Output.create<EdgeCacheOriginOriginRedirect>(EdgeCacheOriginOriginRedirect.fromMap((map['originRedirect'] as Map).cast<String, dynamic>())),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      retryConditions: map['retryConditions'] == null ? null : pulumi.Output.create<List<String>>((map['retryConditions'] as List).cast<String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<EdgeCacheOriginTimeout>(EdgeCacheOriginTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())),
    );
  }
}

