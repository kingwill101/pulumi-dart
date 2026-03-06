// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pair of detailed information about the client which invoked the test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.
class ClientInfoDetailResponse {
  /// The key of detailed client information.
  final pulumi.Input<String> key;
  /// The value of detailed client information.
  final pulumi.Input<String> value;

  /// Creates a new [ClientInfoDetailResponse].
  /// [key] The key of detailed client information.
  /// [value] The value of detailed client information.
  const ClientInfoDetailResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ClientInfoDetailResponse.fromMap(Map<String, dynamic> map) {
    return ClientInfoDetailResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

