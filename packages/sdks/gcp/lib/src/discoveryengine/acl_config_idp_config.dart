// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_config_idp_config_external_idp_config.dart';

class AclConfigIdpConfig {
  /// External third party identity provider config.
  /// Structure is documented below.
  final pulumi.Input<AclConfigIdpConfigExternalIdpConfig>? externalIdpConfig;
  /// Identity provider type.
  /// Possible values are: `GSUITE`, `THIRD_PARTY`.
  final pulumi.Input<String>? idpType;

  /// Creates a new [AclConfigIdpConfig].
  /// [externalIdpConfig] External third party identity provider config.
  /// [idpType] Identity provider type.
  const AclConfigIdpConfig({
    this.externalIdpConfig,
    this.idpType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIdpConfig': ?pulumi.Input.mapOptionalInputValue<AclConfigIdpConfigExternalIdpConfig, Map<String, dynamic>>(externalIdpConfig, (value) => value.toMap()),
      'idpType': ?idpType,
    };
  }

  factory AclConfigIdpConfig.fromMap(Map<String, dynamic> map) {
    return AclConfigIdpConfig(
      externalIdpConfig: (() { final guardedValue = map['externalIdpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AclConfigIdpConfigExternalIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idpType: (() { final guardedValue = map['idpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

