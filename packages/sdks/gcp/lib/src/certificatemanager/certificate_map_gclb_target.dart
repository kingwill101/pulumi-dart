// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_gclb_target_ip_config.dart';

class CertificateMapGclbTarget {
  /// An IP configuration where this Certificate Map is serving
  /// Structure is documented below.
  final pulumi.Input<List<CertificateMapGclbTargetIpConfig>>? ipConfigs;
  /// Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// This field is part of a union field `target_proxy`: Only one of `targetHttpsProxy` or
  /// `targetSslProxy` may be set.
  final pulumi.Input<String>? targetHttpsProxy;
  /// Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  /// This field is part of a union field `target_proxy`: Only one of `targetHttpsProxy` or
  /// `targetSslProxy` may be set.
  final pulumi.Input<String>? targetSslProxy;

  /// Creates a new [CertificateMapGclbTarget].
  /// [ipConfigs] An IP configuration where this Certificate Map is serving
  /// [targetHttpsProxy] Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// [targetSslProxy] Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  const CertificateMapGclbTarget({
    this.ipConfigs,
    this.targetHttpsProxy,
    this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigs': ?pulumi.Input.mapOptionalInputValue<List<CertificateMapGclbTargetIpConfig>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<CertificateMapGclbTargetIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetHttpsProxy': ?targetHttpsProxy,
      'targetSslProxy': ?targetSslProxy,
    };
  }

  factory CertificateMapGclbTarget.fromMap(Map<String, dynamic> map) {
    return CertificateMapGclbTarget(
      ipConfigs: (() { final guardedValue = map['ipConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateMapGclbTargetIpConfig>(guardedValue, (value) => CertificateMapGclbTargetIpConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetHttpsProxy: (() { final guardedValue = map['targetHttpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSslProxy: (() { final guardedValue = map['targetSslProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

