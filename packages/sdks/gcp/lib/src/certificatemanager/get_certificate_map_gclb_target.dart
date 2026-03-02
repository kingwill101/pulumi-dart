// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_gclb_target_ip_config.dart';

class GetCertificateMapGclbTarget {
  /// An IP configuration where this Certificate Map is serving
  final pulumi.Input<List<GetCertificateMapGclbTargetIpConfig>> ipConfigs;
  /// Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// This field is part of a union field 'target_proxy': Only one of 'targetHttpsProxy' or
  /// 'targetSslProxy' may be set.
  final pulumi.Input<String> targetHttpsProxy;
  /// Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  /// This field is part of a union field 'target_proxy': Only one of 'targetHttpsProxy' or
  /// 'targetSslProxy' may be set.
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetCertificateMapGclbTarget].
  /// [ipConfigs] An IP configuration where this Certificate Map is serving
  /// [targetHttpsProxy] Proxy name must be in the format projects/*/locations/*/targetHttpsProxies/*.
  /// [targetSslProxy] Proxy name must be in the format projects/*/locations/*/targetSslProxies/*.
  GetCertificateMapGclbTarget({
    required this.ipConfigs,
    required this.targetHttpsProxy,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigs': pulumi.Input.mapInputValue<List<GetCertificateMapGclbTargetIpConfig>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<GetCertificateMapGclbTargetIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetHttpsProxy': targetHttpsProxy,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetCertificateMapGclbTarget.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapGclbTarget(
      ipConfigs: (pulumi.Input.decodeList<GetCertificateMapGclbTargetIpConfig>(map['ipConfigs'], (value) => GetCertificateMapGclbTargetIpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetHttpsProxy: (map['targetHttpsProxy'] as String).input(),
      targetSslProxy: (map['targetSslProxy'] as String).input(),
    );
  }
}

