// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBackendPoolSetting {
  /// Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between `0` - `240`. Defaults to `60`.
  final pulumi.Input<int>? backendPoolsSendReceiveTimeoutSeconds;
  /// Enforce certificate name check on `HTTPS` requests to all backend pools, this setting will have no effect on `HTTP` requests. Permitted values are `true` or `false`.
  ///
  /// &gt; **NOTE:** `backendPoolsSendReceiveTimeoutSeconds` and `enforceBackendPoolsCertificateNameCheck` apply to all backend pools.
  final pulumi.Input<bool> enforceBackendPoolsCertificateNameCheck;

  /// Creates a new [FrontdoorBackendPoolSetting].
  /// [backendPoolsSendReceiveTimeoutSeconds] Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between `0` - `240`. Defaults to `60`.
  /// [enforceBackendPoolsCertificateNameCheck] Enforce certificate name check on `HTTPS` requests to all backend pools, this setting will have no effect on `HTTP` requests. Permitted values are `true` or `false`.
  const FrontdoorBackendPoolSetting({
    this.backendPoolsSendReceiveTimeoutSeconds,
    required this.enforceBackendPoolsCertificateNameCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolsSendReceiveTimeoutSeconds': ?backendPoolsSendReceiveTimeoutSeconds,
      'enforceBackendPoolsCertificateNameCheck': enforceBackendPoolsCertificateNameCheck,
    };
  }

  factory FrontdoorBackendPoolSetting.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPoolSetting(
      backendPoolsSendReceiveTimeoutSeconds: (() { final guardedValue = map['backendPoolsSendReceiveTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enforceBackendPoolsCertificateNameCheck: pulumi.Input.fromValue(map['enforceBackendPoolsCertificateNameCheck'] as bool),
    );
  }
}
