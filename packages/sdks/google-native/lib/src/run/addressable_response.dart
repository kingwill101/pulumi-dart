// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting over HTTP(s).
class AddressableResponse {
  final pulumi.Input<String> url;

  /// Creates a new [AddressableResponse].
  /// [url] Required.
  const AddressableResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory AddressableResponse.fromMap(Map<String, dynamic> map) {
    return AddressableResponse(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

