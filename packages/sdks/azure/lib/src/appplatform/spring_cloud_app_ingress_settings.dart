// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudAppIngressSettings {
  /// Specifies how ingress should communicate with this app backend service. Allowed values are `GRPC` and `Default`. Defaults to `Default`.
  final pulumi.Input<String>? backendProtocol;
  /// Specifies the ingress read time out in seconds. Defaults to `300`.
  final pulumi.Input<int>? readTimeoutInSeconds;
  /// Specifies the ingress send time out in seconds. Defaults to `60`.
  final pulumi.Input<int>? sendTimeoutInSeconds;
  /// Specifies the type of the affinity, set this to `Cookie` to enable session affinity. Allowed values are `Cookie` and `None`. Defaults to `None`.
  final pulumi.Input<String>? sessionAffinity;
  /// Specifies the time in seconds until the cookie expires.
  final pulumi.Input<int>? sessionCookieMaxAge;

  /// Creates a new [SpringCloudAppIngressSettings].
  /// [backendProtocol] Specifies how ingress should communicate with this app backend service. Allowed values are `GRPC` and `Default`. Defaults to `Default`.
  /// [readTimeoutInSeconds] Specifies the ingress read time out in seconds. Defaults to `300`.
  /// [sendTimeoutInSeconds] Specifies the ingress send time out in seconds. Defaults to `60`.
  /// [sessionAffinity] Specifies the type of the affinity, set this to `Cookie` to enable session affinity. Allowed values are `Cookie` and `None`. Defaults to `None`.
  /// [sessionCookieMaxAge] Specifies the time in seconds until the cookie expires.
  SpringCloudAppIngressSettings({
    this.backendProtocol,
    this.readTimeoutInSeconds,
    this.sendTimeoutInSeconds,
    this.sessionAffinity,
    this.sessionCookieMaxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendProtocol': ?backendProtocol,
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
      'sendTimeoutInSeconds': ?sendTimeoutInSeconds,
      'sessionAffinity': ?sessionAffinity,
      'sessionCookieMaxAge': ?sessionCookieMaxAge,
    };
  }

  factory SpringCloudAppIngressSettings.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppIngressSettings(
      backendProtocol: map['backendProtocol'] == null ? null : (map['backendProtocol'] as String).input(),
      readTimeoutInSeconds: map['readTimeoutInSeconds'] == null ? null : (map['readTimeoutInSeconds'] as int).input(),
      sendTimeoutInSeconds: map['sendTimeoutInSeconds'] == null ? null : (map['sendTimeoutInSeconds'] as int).input(),
      sessionAffinity: map['sessionAffinity'] == null ? null : (map['sessionAffinity'] as String).input(),
      sessionCookieMaxAge: map['sessionCookieMaxAge'] == null ? null : (map['sessionCookieMaxAge'] as int).input(),
    );
  }
}

