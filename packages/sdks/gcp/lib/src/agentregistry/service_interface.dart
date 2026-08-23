// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceInterface {
  /// The protocol binding of the interface.
  /// Possible values are: `JSONRPC`, `GRPC`, `HTTP_JSON`.
  final pulumi.Input<String> protocolBinding;
  /// The destination URL.
  final pulumi.Input<String> url;

  /// Creates a new [ServiceInterface].
  /// [protocolBinding] The protocol binding of the interface.
  /// [url] The destination URL.
  const ServiceInterface({
    required this.protocolBinding,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolBinding': protocolBinding,
      'url': url,
    };
  }

  factory ServiceInterface.fromMap(Map<String, dynamic> map) {
    return ServiceInterface(
      protocolBinding: pulumi.Input.fromValue(map['protocolBinding'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
