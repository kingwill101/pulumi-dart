// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailSecurityDomainAuthorization {
  final pulumi.Input<bool?>? authorized;
  final pulumi.Input<String?>? statusMessage;
  final pulumi.Input<String?>? timestamp;

  /// Creates a new [EmailSecurityDomainAuthorization].
  /// [authorized] Optional.
  /// [statusMessage] Optional.
  /// [timestamp] Optional.
  const EmailSecurityDomainAuthorization({
    this.authorized,
    this.statusMessage,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorized': ?authorized,
      'statusMessage': ?statusMessage,
      'timestamp': ?timestamp,
    };
  }

  factory EmailSecurityDomainAuthorization.fromMap(Map<String, dynamic> map) {
    return EmailSecurityDomainAuthorization(
      authorized: (() { final guardedValue = map['authorized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
