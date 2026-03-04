// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_tls_config_trust_config_cas_config.dart';

class ClusterTlsConfigTrustConfig {
  /// Configuration for the Google Certificate Authority Service. To support mTLS, you must specify at least one `cas_configs` block. A maximum of 10 CA pools can be specified. Additional CA pools may be specified with additional `cas_configs` blocks.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterTlsConfigTrustConfigCasConfig>>? casConfigs;

  /// Creates a new [ClusterTlsConfigTrustConfig].
  /// [casConfigs] Configuration for the Google Certificate Authority Service. To support mTLS, you must specify at least one `cas_configs` block. A maximum of 10 CA pools can be specified. Additional CA pools may be specified with additional `cas_configs` blocks.
  ClusterTlsConfigTrustConfig({this.casConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'casConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterTlsConfigTrustConfigCasConfig>,
            List<Map<String, dynamic>>
          >(
            casConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterTlsConfigTrustConfigCasConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterTlsConfigTrustConfig.fromMap(Map<String, dynamic> map) {
    return ClusterTlsConfigTrustConfig(
      casConfigs: (() {
        final guardedValue = map['casConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterTlsConfigTrustConfigCasConfig>(
            guardedValue,
            (value) => ClusterTlsConfigTrustConfigCasConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
