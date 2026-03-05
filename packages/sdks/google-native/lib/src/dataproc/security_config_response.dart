// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_config_response.dart';
import 'kerberos_config_response.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigResponse {
  /// Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.
  final pulumi.Input<IdentityConfigResponse> identityConfig;
  /// Optional. Kerberos related configuration.
  final pulumi.Input<KerberosConfigResponse> kerberosConfig;

  /// Creates a new [SecurityConfigResponse].
  /// [identityConfig] Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.
  /// [kerberosConfig] Optional. Kerberos related configuration.
  SecurityConfigResponse({
    required this.identityConfig,
    required this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityConfig': pulumi.Input.mapInputValue<IdentityConfigResponse, Map<String, dynamic>>(identityConfig, (value) => value.toMap()),
      'kerberosConfig': pulumi.Input.mapInputValue<KerberosConfigResponse, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory SecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityConfigResponse(
      identityConfig: pulumi.Input.fromValue(IdentityConfigResponse.fromMap((map['identityConfig']! as Map).cast<String, dynamic>())),
      kerberosConfig: pulumi.Input.fromValue(KerberosConfigResponse.fromMap((map['kerberosConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

