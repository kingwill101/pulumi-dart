// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataExchangeSharingEnvironmentConfig {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  final pulumi.Input<Map<String, dynamic>>? dcrExchangeConfig;
  /// Default Analytics Hub data exchange, used for secured data sharing.
  final pulumi.Input<Map<String, dynamic>>? defaultExchangeConfig;

  /// Creates a new [DataExchangeSharingEnvironmentConfig].
  /// [dcrExchangeConfig] Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  /// [defaultExchangeConfig] Default Analytics Hub data exchange, used for secured data sharing.
  const DataExchangeSharingEnvironmentConfig({
    this.dcrExchangeConfig,
    this.defaultExchangeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcrExchangeConfig': ?dcrExchangeConfig,
      'defaultExchangeConfig': ?defaultExchangeConfig,
    };
  }

  factory DataExchangeSharingEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return DataExchangeSharingEnvironmentConfig(
      dcrExchangeConfig: (() { final guardedValue = map['dcrExchangeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultExchangeConfig: (() { final guardedValue = map['defaultExchangeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

