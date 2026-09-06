// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// name and value of HTTP/S header to insert
class FirewallPolicyHttpHeaderToInsertResponse {
  /// Contains the name of the header
  final pulumi.Input<String?>? headerName;
  /// Contains the value of the header
  final pulumi.Input<String?>? headerValue;

  /// Creates a new [FirewallPolicyHttpHeaderToInsertResponse].
  /// [headerName] Contains the name of the header
  /// [headerValue] Contains the value of the header
  const FirewallPolicyHttpHeaderToInsertResponse({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory FirewallPolicyHttpHeaderToInsertResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyHttpHeaderToInsertResponse(
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerValue: (() { final guardedValue = map['headerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
