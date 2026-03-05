// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';

/// Specifies the security related settings for the bare metal admin cluster.
class BareMetalAdminSecurityConfig {
  /// Configures user access to the admin cluster.
  final pulumi.Input<Authorization>? authorization;

  /// Creates a new [BareMetalAdminSecurityConfig].
  /// [authorization] Configures user access to the admin cluster.
  BareMetalAdminSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<Authorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminSecurityConfig(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

