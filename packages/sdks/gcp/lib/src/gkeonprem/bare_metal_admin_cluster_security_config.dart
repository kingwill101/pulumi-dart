// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_security_config_authorization.dart';

class BareMetalAdminClusterSecurityConfig {
  /// Configures user access to the Bare Metal User cluster.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterSecurityConfigAuthorization>? authorization;

  /// Creates a new [BareMetalAdminClusterSecurityConfig].
  /// [authorization] Configures user access to the Bare Metal User cluster.
  const BareMetalAdminClusterSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterSecurityConfigAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterSecurityConfig(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterSecurityConfigAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
