// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A status to accept. Either a status code class like "2xx", or an integer status code like "200".
class ResponseStatusCodeResponse {
  /// A class of status codes to accept.
  final pulumi.Input<String> statusClass;
  /// A status code to accept.
  final pulumi.Input<int> statusValue;

  /// Creates a new [ResponseStatusCodeResponse].
  /// [statusClass] A class of status codes to accept.
  /// [statusValue] A status code to accept.
  const ResponseStatusCodeResponse({
    required this.statusClass,
    required this.statusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusClass': statusClass,
      'statusValue': statusValue,
    };
  }

  factory ResponseStatusCodeResponse.fromMap(Map<String, dynamic> map) {
    return ResponseStatusCodeResponse(
      statusClass: pulumi.Input.fromValue(map['statusClass'] as String),
      statusValue: pulumi.Input.fromValue(map['statusValue'] as int),
    );
  }
}

