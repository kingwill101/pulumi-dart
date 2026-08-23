// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset_tls_config_ca_cert.dart';

class AppVersionSnapshotToolsetOpenApiToolsetTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert>>? caCerts;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetTlsConfig].
  /// [caCerts] (Output)
  const AppVersionSnapshotToolsetOpenApiToolsetTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetTlsConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetTlsConfig(
      caCerts: (() { final guardedValue = map['caCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert>(guardedValue, (value) => AppVersionSnapshotToolsetOpenApiToolsetTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
