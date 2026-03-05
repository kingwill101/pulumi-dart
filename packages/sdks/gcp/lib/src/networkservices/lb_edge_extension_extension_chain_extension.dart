// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbEdgeExtensionExtensionChainExtension {
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
  /// This field is required for the LbEdgeExtension resource and only supports the value `REQUEST_HEADERS`.
  final pulumi.Input<List<String>>? supportedEvents;

  /// Creates a new [LbEdgeExtensionExtensionChainExtension].
  /// [failOpen] Determines how the proxy behaves if the call to the extension fails or times out.
  /// [forwardHeaders] List of the HTTP headers to forward to the extension (from the client or backend).
  /// [name] The name for this extension. The name is logged as part of the HTTP request logs.
  /// [service] The reference to the service that runs the extension.
  /// [supportedEvents] A set of events during request or response processing for which this extension is called.
  LbEdgeExtensionExtensionChainExtension({
    this.failOpen,
    this.forwardHeaders,
    required this.name,
    required this.service,
    this.supportedEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failOpen': ?failOpen,
      'forwardHeaders': ?forwardHeaders,
      'name': name,
      'service': service,
      'supportedEvents': ?supportedEvents,
    };
  }

  factory LbEdgeExtensionExtensionChainExtension.fromMap(Map<String, dynamic> map) {
    return LbEdgeExtensionExtensionChainExtension(
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardHeaders: (() { final guardedValue = map['forwardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      supportedEvents: (() { final guardedValue = map['supportedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

