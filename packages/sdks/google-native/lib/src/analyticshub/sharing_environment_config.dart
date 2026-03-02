// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sharing environment is a behavior model for sharing data within a data exchange. This option is configurable for a data exchange.
class SharingEnvironmentConfig {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  final pulumi.Input<Map<String, dynamic>>? dcrExchangeConfig;
  /// Default Analytics Hub data exchange, used for secured data sharing.
  final pulumi.Input<Map<String, dynamic>>? defaultExchangeConfig;

  /// Creates a new [SharingEnvironmentConfig].
  /// [dcrExchangeConfig] Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  /// [defaultExchangeConfig] Default Analytics Hub data exchange, used for secured data sharing.
  SharingEnvironmentConfig({
    this.dcrExchangeConfig,
    this.defaultExchangeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcrExchangeConfig': ?dcrExchangeConfig,
      'defaultExchangeConfig': ?defaultExchangeConfig,
    };
  }

  factory SharingEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return SharingEnvironmentConfig(
      dcrExchangeConfig: map['dcrExchangeConfig'] == null ? null : ((map['dcrExchangeConfig'] as Map).cast<String, dynamic>()).input(),
      defaultExchangeConfig: map['defaultExchangeConfig'] == null ? null : ((map['defaultExchangeConfig'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

