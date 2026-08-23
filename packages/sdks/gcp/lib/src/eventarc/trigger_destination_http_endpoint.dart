// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDestinationHttpEndpoint {
  /// Required. The URI of the HTTP enpdoint. The value must be a RFC2396 URI string. Examples: `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`. Only HTTP and HTTPS protocols are supported. The host can be either a static IP addressable from the VPC specified by the network config, or an internal DNS hostname of the service resolvable via Cloud DNS.
  final pulumi.Input<String> uri;

  /// Creates a new [TriggerDestinationHttpEndpoint].
  /// [uri] Required. The URI of the HTTP enpdoint. The value must be a RFC2396 URI string. Examples: `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`. Only HTTP and HTTPS protocols are supported. The host can be either a static IP addressable from the VPC specified by the network config, or an internal DNS hostname of the service resolvable via Cloud DNS.
  const TriggerDestinationHttpEndpoint({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory TriggerDestinationHttpEndpoint.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationHttpEndpoint(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
