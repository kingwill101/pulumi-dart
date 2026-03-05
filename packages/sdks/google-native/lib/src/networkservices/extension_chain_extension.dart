// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain_extension_supported_events_item.dart';

/// A single extension in the chain to execute for the matching request.
class ExtensionChainExtension {
  /// The `:authority` header in the gRPC request sent from Envoy to the extension service.
  final pulumi.Input<String> authority;
  /// Optional. Determines how the proxy behaves if the call to the extension fails or times out. When set to `TRUE`, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to `FALSE`: * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer. * If response headers have been delivered, then the HTTP stream to the downstream client is reset. Default is `FALSE`.
  final pulumi.Input<bool>? failOpen;
  /// Optional. List of the HTTP headers to forward to the extension (from the client or backend). If omitted, all headers are sent. Each element is a string indicating the header name.
  final pulumi.Input<List<String>>? forwardHeaders;
  /// The name for this extension. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  final pulumi.Input<String> name;
  /// The reference to the service that runs the extension. Must be a reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  final pulumi.Input<String> service;
  /// Optional. A set of events during request or response processing for which this extension is called. This field is required for the `LbTrafficExtension` resource. It's not relevant for the `LbRouteExtension` resource.
  final pulumi.Input<List<ExtensionChainExtensionSupportedEventsItem>>? supportedEvents;
  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  final pulumi.Input<String> timeout;

  /// Creates a new [ExtensionChainExtension].
  /// [authority] The `:authority` header in the gRPC request sent from Envoy to the extension service.
  /// [failOpen] Optional. Determines how the proxy behaves if the call to the extension fails or times out. When set to `TRUE`, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to `FALSE`: * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer. * If response headers have been delivered, then the HTTP stream to the downstream client is reset. Default is `FALSE`.
  /// [forwardHeaders] Optional. List of the HTTP headers to forward to the extension (from the client or backend). If omitted, all headers are sent. Each element is a string indicating the header name.
  /// [name] The name for this extension. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  /// [service] The reference to the service that runs the extension. Must be a reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// [supportedEvents] Optional. A set of events during request or response processing for which this extension is called. This field is required for the `LbTrafficExtension` resource. It's not relevant for the `LbRouteExtension` resource.
  /// [timeout] Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  ExtensionChainExtension({
    required this.authority,
    this.failOpen,
    this.forwardHeaders,
    required this.name,
    required this.service,
    this.supportedEvents,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': authority,
      'failOpen': ?failOpen,
      'forwardHeaders': ?forwardHeaders,
      'name': name,
      'service': service,
      'supportedEvents': ?pulumi.Input.mapOptionalInputValue<List<ExtensionChainExtensionSupportedEventsItem>, List<String>>(supportedEvents, (value) => pulumi.Input.encodeList<ExtensionChainExtensionSupportedEventsItem, String>(value, (value) => value.wireValue)),
      'timeout': timeout,
    };
  }

  factory ExtensionChainExtension.fromMap(Map<String, dynamic> map) {
    return ExtensionChainExtension(
      authority: pulumi.Input.fromValue(map['authority'] as String),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardHeaders: (() { final guardedValue = map['forwardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      supportedEvents: (() { final guardedValue = map['supportedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionChainExtensionSupportedEventsItem>(guardedValue, (value) => ExtensionChainExtensionSupportedEventsItem.fromValue(value as String))); })(),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}

