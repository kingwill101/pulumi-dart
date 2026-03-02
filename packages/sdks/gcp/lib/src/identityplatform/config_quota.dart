// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_quota_sign_up_quota_config.dart';

class ConfigQuota {
  /// Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. None of quota, startTime, or quotaDuration can be skipped.
  /// Structure is documented below.
  final pulumi.Input<ConfigQuotaSignUpQuotaConfig>? signUpQuotaConfig;

  /// Creates a new [ConfigQuota].
  /// [signUpQuotaConfig] Quota for the Signup endpoint, if overwritten. Signup quota is measured in sign ups per project per hour per IP. None of quota, startTime, or quotaDuration can be skipped.
  ConfigQuota({
    this.signUpQuotaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signUpQuotaConfig': ?pulumi.Input.mapOptionalInputValue<ConfigQuotaSignUpQuotaConfig, Map<String, dynamic>>(signUpQuotaConfig, (value) => value.toMap()),
    };
  }

  factory ConfigQuota.fromMap(Map<String, dynamic> map) {
    return ConfigQuota(
      signUpQuotaConfig: map['signUpQuotaConfig'] == null ? null : (ConfigQuotaSignUpQuotaConfig.fromMap((map['signUpQuotaConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

