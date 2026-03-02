// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBackendPoolSetting {
  /// Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between `0` - `240`. Defaults to `60`.
  final pulumi.Input<int>? backendPoolsSendReceiveTimeoutSeconds;
  /// Enforce certificate name check on `HTTPS` requests to all backend pools, this setting will have no effect on `HTTP` requests. Permitted values are `true` or `false`.
  ///
  /// > **NOTE:** `backend_pools_send_receive_timeout_seconds` and `enforce_backend_pools_certificate_name_check` apply to all backend pools.
  final pulumi.Input<bool> enforceBackendPoolsCertificateNameCheck;

  /// Creates a new [FrontdoorBackendPoolSetting].
  /// [backendPoolsSendReceiveTimeoutSeconds] Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between `0` - `240`. Defaults to `60`.
  /// [enforceBackendPoolsCertificateNameCheck] Enforce certificate name check on `HTTPS` requests to all backend pools, this setting will have no effect on `HTTP` requests. Permitted values are `true` or `false`.
  FrontdoorBackendPoolSetting({
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
      backendPoolsSendReceiveTimeoutSeconds: map['backendPoolsSendReceiveTimeoutSeconds'] == null ? null : (map['backendPoolsSendReceiveTimeoutSeconds']! as int).input(),
      enforceBackendPoolsCertificateNameCheck: (map['enforceBackendPoolsCertificateNameCheck'] as bool).input(),
    );
  }
}

