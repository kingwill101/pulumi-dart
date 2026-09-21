// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityDomainAuthorization {
  final pulumi.Input<bool> authorized;
  final pulumi.Input<String> statusMessage;
  final pulumi.Input<String> timestamp;

  /// Creates a new [GetEmailSecurityDomainAuthorization].
  /// [authorized] Required.
  /// [statusMessage] Required.
  /// [timestamp] Required.
  const GetEmailSecurityDomainAuthorization({
    required this.authorized,
    required this.statusMessage,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorized': authorized,
      'statusMessage': statusMessage,
      'timestamp': timestamp,
    };
  }

  factory GetEmailSecurityDomainAuthorization.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainAuthorization(
      authorized: pulumi.Input.fromValue(map['authorized'] as bool),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
    );
  }
}
