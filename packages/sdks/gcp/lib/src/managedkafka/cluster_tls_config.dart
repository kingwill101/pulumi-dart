// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_tls_config_trust_config.dart';

class ClusterTlsConfig {
  /// The rules for mapping mTLS certificate Distinguished Names (DNs) to shortened principal names for Kafka ACLs. This field corresponds exactly to the ssl.principal.mapping.rules broker config and matches the format and syntax defined in the Apache Kafka documentation. Setting or modifying this field will trigger a rolling restart of the Kafka brokers to apply the change. An empty string means that the default Kafka behavior is used. Example: `RULE:^CN=(.?),OU=ServiceUsers.$/$1@example.com/,DEFAULT`
  final pulumi.Input<String>? sslPrincipalMappingRules;
  /// The configuration of the broker truststore. If specified, clients can use mTLS for authentication.
  /// Structure is documented below.
  final pulumi.Input<ClusterTlsConfigTrustConfig>? trustConfig;

  /// Creates a new [ClusterTlsConfig].
  /// [sslPrincipalMappingRules] The rules for mapping mTLS certificate Distinguished Names (DNs) to shortened principal names for Kafka ACLs. This field corresponds exactly to the ssl.principal.mapping.rules broker config and matches the format and syntax defined in the Apache Kafka documentation. Setting or modifying this field will trigger a rolling restart of the Kafka brokers to apply the change. An empty string means that the default Kafka behavior is used. Example: `RULE:^CN=(.?),OU=ServiceUsers.$/$1@example.com/,DEFAULT`
  /// [trustConfig] The configuration of the broker truststore. If specified, clients can use mTLS for authentication.
  const ClusterTlsConfig({
    this.sslPrincipalMappingRules,
    this.trustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sslPrincipalMappingRules': ?sslPrincipalMappingRules,
      'trustConfig': ?pulumi.Input.mapOptionalInputValue<ClusterTlsConfigTrustConfig, Map<String, dynamic>>(trustConfig, (value) => value.toMap()),
    };
  }

  factory ClusterTlsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterTlsConfig(
      sslPrincipalMappingRules: (() { final guardedValue = map['sslPrincipalMappingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustConfig: (() { final guardedValue = map['trustConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTlsConfigTrustConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

