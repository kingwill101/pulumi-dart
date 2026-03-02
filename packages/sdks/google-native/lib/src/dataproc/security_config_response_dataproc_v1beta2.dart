// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kerberos_config_response_dataproc_v1beta2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigResponseDataprocV1beta2 {
  /// Optional. Kerberos related configuration.
  final pulumi.Input<KerberosConfigResponseDataprocV1beta2> kerberosConfig;

  /// Creates a new [SecurityConfigResponseDataprocV1beta2].
  /// [kerberosConfig] Optional. Kerberos related configuration.
  SecurityConfigResponseDataprocV1beta2({
    required this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosConfig': pulumi.Input.mapInputValue<KerberosConfigResponseDataprocV1beta2, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory SecurityConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SecurityConfigResponseDataprocV1beta2(
      kerberosConfig: (KerberosConfigResponseDataprocV1beta2.fromMap((map['kerberosConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

