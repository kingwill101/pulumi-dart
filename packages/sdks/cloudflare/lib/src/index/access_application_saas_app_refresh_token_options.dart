// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationSaasAppRefreshTokenOptions {
  /// How long a refresh token will be valid for after creation. Valid units are m,h,d. Must be longer than 1m.
  final pulumi.Input<String?>? lifetime;

  /// Creates a new [AccessApplicationSaasAppRefreshTokenOptions].
  /// [lifetime] How long a refresh token will be valid for after creation. Valid units are m,h,d. Must be longer than 1m.
  const AccessApplicationSaasAppRefreshTokenOptions({
    this.lifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifetime': ?lifetime,
    };
  }

  factory AccessApplicationSaasAppRefreshTokenOptions.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppRefreshTokenOptions(
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
