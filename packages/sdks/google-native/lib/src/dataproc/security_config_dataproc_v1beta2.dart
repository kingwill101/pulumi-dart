// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kerberos_config_dataproc_v1beta2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigDataprocV1beta2 {
  /// Optional. Kerberos related configuration.
  final pulumi.Input<KerberosConfigDataprocV1beta2>? kerberosConfig;

  /// Creates a new [SecurityConfigDataprocV1beta2].
  /// [kerberosConfig] Optional. Kerberos related configuration.
  const SecurityConfigDataprocV1beta2({
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<KerberosConfigDataprocV1beta2, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory SecurityConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SecurityConfigDataprocV1beta2(
      kerberosConfig: (() { final guardedValue = map['kerberosConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KerberosConfigDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

