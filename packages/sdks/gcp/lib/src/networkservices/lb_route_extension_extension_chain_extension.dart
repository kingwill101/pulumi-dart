// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbRouteExtensionExtensionChainExtension {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  final pulumi.Input<String>? authority;
  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error.
  /// Any subsequent extensions in the extension chain are also executed.
  /// When set to FALSE: * If response headers have not been delivered to the downstream client,
  /// a generic 500 error is returned to the client. The error response can be tailored by
  /// configuring a custom error response in the load balancer.
  final pulumi.Input<bool>? failOpen;
  /// List of the HTTP headers to forward to the extension (from the client or backend).
  /// If omitted, all headers are sent. Each element is a string indicating the header name.
  final pulumi.Input<List<String>>? forwardHeaders;
  /// The metadata provided here is included as part of the `metadata_context` (of type `google.protobuf.Struct`)
  /// in the `ProcessingRequest` message sent to the extension server.
  /// The metadata is available under the namespace `com.google.lb_route_extension.&lt;resource_name&gt;.&lt;chain_name&gt;.&lt;extension_name&gt;`.
  /// The following variables are supported in the metadata: `{forwarding_rule_id}` - substituted with the forwarding rule's fully qualified resource name.
  /// This field must not be set for plugin extensions. Setting it results in a validation error.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name for this extension. The name is logged as part of the HTTP request logs.
  /// The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first character must be a letter
  /// and the last a letter or a number.
  final pulumi.Input<String> name;
  /// When set to `TRUE`, enables `observability_mode` on the `ext_proc` filter.
  /// This makes `ext_proc` calls asynchronous. Envoy doesn't check for the response from `ext_proc` calls.
  /// For more information about the filter, see: https://www.envoyproxy.io/docs/envoy/v1.32.3/api-v3/extensions/filters/http/ext_proc/v3/ext_proc.proto
  /// This field is helpful when you want to try out the extension in async log-only mode.
  /// Supported by regional `LbTrafficExtension` and `LbRouteExtension` resources.
  /// Only `STREAMED` (default) body processing mode is supported.
  final pulumi.Input<bool>? observabilityMode;
  /// Configures the send mode for request body processing.
  /// The field can only be set if `supported_events` includes `REQUEST_BODY`.
  /// If `supported_events` includes `REQUEST_BODY`, but `request_body_send_mode` is unset, the default value `STREAMED` is used.
  /// When this field is set to `FULL_DUPLEX_STREAMED`, `supported_events` must include both `REQUEST_BODY` and `REQUEST_TRAILERS`.
  /// This field can be set only when the `service` field of the extension points to a `BackendService`.
  /// Only `FULL_DUPLEX_STREAMED` mode is supported for `LbRouteExtension` resources.
  /// Possible values are: `BODY_SEND_MODE_UNSPECIFIED`, `BODY_SEND_MODE_STREAMED`, `BODY_SEND_MODE_FULL_DUPLEX_STREAMED`.
  final pulumi.Input<String>? requestBodySendMode;
  /// The reference to the service that runs the extension.
  /// * To configure a callout extension, service must be a fully-qualified reference to a backend service.
  /// * To configure a plugin extension, service must be a reference to a WasmPlugin resource.
  final pulumi.Input<String> service;
  /// A set of events during request or response processing for which this extension is called.
  /// This field is optional for the LbRouteExtension resource. If unspecified, `REQUEST_HEADERS` event is assumed as supported.
  /// Possible values: `REQUEST_HEADERS`, `REQUEST_BODY`, `REQUEST_TRAILERS`.
  final pulumi.Input<List<String>>? supportedEvents;
  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? timeout;

  /// Creates a new [LbRouteExtensionExtensionChainExtension].
  /// [authority] The :authority header in the gRPC request sent from Envoy to the extension service.
  /// [failOpen] Determines how the proxy behaves if the call to the extension fails or times out.
  /// [forwardHeaders] List of the HTTP headers to forward to the extension (from the client or backend).
  /// [metadata] The metadata provided here is included as part of the `metadata_context` (of type `google.protobuf.Struct`)
  /// [name] The name for this extension. The name is logged as part of the HTTP request logs.
  /// [observabilityMode] When set to `TRUE`, enables `observability_mode` on the `ext_proc` filter.
  /// [requestBodySendMode] Configures the send mode for request body processing.
  /// [service] The reference to the service that runs the extension.
  /// [supportedEvents] A set of events during request or response processing for which this extension is called.
  /// [timeout] Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  const LbRouteExtensionExtensionChainExtension({
    this.authority,
    this.failOpen,
    this.forwardHeaders,
    this.metadata,
    required this.name,
    this.observabilityMode,
    this.requestBodySendMode,
    required this.service,
    this.supportedEvents,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'failOpen': ?failOpen,
      'forwardHeaders': ?forwardHeaders,
      'metadata': ?metadata,
      'name': name,
      'observabilityMode': ?observabilityMode,
      'requestBodySendMode': ?requestBodySendMode,
      'service': service,
      'supportedEvents': ?supportedEvents,
      'timeout': ?timeout,
    };
  }

  factory LbRouteExtensionExtensionChainExtension.fromMap(Map<String, dynamic> map) {
    return LbRouteExtensionExtensionChainExtension(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardHeaders: (() { final guardedValue = map['forwardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      observabilityMode: (() { final guardedValue = map['observabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodySendMode: (() { final guardedValue = map['requestBodySendMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
      supportedEvents: (() { final guardedValue = map['supportedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

