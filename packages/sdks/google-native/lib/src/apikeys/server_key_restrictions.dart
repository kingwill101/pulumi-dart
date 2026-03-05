// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP addresses of callers that are allowed to use the key.
class ServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final pulumi.Input<List<String>>? allowedIps;

  /// Creates a new [ServerKeyRestrictions].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  ServerKeyRestrictions({
    this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': ?allowedIps,
    };
  }

  factory ServerKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ServerKeyRestrictions(
      allowedIps: (() { final guardedValue = map['allowedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

