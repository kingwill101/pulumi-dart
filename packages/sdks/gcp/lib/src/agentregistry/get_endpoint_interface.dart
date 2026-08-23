// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointInterface {
  /// The protocol binding of the interface.
  final pulumi.Input<String> protocolBinding;
  /// The destination URL.
  final pulumi.Input<String> url;

  /// Creates a new [GetEndpointInterface].
  /// [protocolBinding] The protocol binding of the interface.
  /// [url] The destination URL.
  const GetEndpointInterface({
    required this.protocolBinding,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolBinding': protocolBinding,
      'url': url,
    };
  }

  factory GetEndpointInterface.fromMap(Map<String, dynamic> map) {
    return GetEndpointInterface(
      protocolBinding: pulumi.Input.fromValue(map['protocolBinding'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
