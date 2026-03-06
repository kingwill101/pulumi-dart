// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbTrafficExtensionExtensionChainExtension {
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
  /// Metadata associated with the extension. This field is used to pass metadata to the extension service.
  /// You can set up key value pairs for metadata as you like and need.
  /// f.e. {"key": "value", "key2": "value2"}.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name for this extension. The name is logged as part of the HTTP request logs.
  /// The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first character must be a letter
  /// and the last a letter or a number.
  final pulumi.Input<String> name;
  /// The reference to the service that runs the extension.
  /// * To configure a callout extension, service must be a fully-qualified reference to a backend service.
  /// * To configure a plugin extension, service must be a reference to a WasmPlugin resource.
  final pulumi.Input<String> service;
  /// A set of events during request or response processing for which this extension is called.
  /// This field is required for the LbTrafficExtension resource. It's not relevant for the LbRouteExtension
  /// resource. Possible values:`EVENT_TYPE_UNSPECIFIED`, `REQUEST_HEADERS`, `REQUEST_BODY`, `RESPONSE_HEADERS`,
  /// `RESPONSE_BODY`, `RESPONSE_BODY` and `RESPONSE_BODY`.
  final pulumi.Input<List<String>>? supportedEvents;
  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? timeout;

  /// Creates a new [LbTrafficExtensionExtensionChainExtension].
  /// [authority] The :authority header in the gRPC request sent from Envoy to the extension service.
  /// [failOpen] Determines how the proxy behaves if the call to the extension fails or times out.
  /// [forwardHeaders] List of the HTTP headers to forward to the extension (from the client or backend).
  /// [metadata] Metadata associated with the extension. This field is used to pass metadata to the extension service.
  /// [name] The name for this extension. The name is logged as part of the HTTP request logs.
  /// [service] The reference to the service that runs the extension.
  /// [supportedEvents] A set of events during request or response processing for which this extension is called.
  /// [timeout] Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  const LbTrafficExtensionExtensionChainExtension({
    this.authority,
    this.failOpen,
    this.forwardHeaders,
    this.metadata,
    required this.name,
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
      'service': service,
      'supportedEvents': ?supportedEvents,
      'timeout': ?timeout,
    };
  }

  factory LbTrafficExtensionExtensionChainExtension.fromMap(Map<String, dynamic> map) {
    return LbTrafficExtensionExtensionChainExtension(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardHeaders: (() { final guardedValue = map['forwardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      supportedEvents: (() { final guardedValue = map['supportedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

