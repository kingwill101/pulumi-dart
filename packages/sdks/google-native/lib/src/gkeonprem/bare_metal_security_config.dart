// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfig {
  /// Configures user access to the user cluster.
  final pulumi.Input<Authorization>? authorization;

  /// Creates a new [BareMetalSecurityConfig].
  /// [authorization] Configures user access to the user cluster.
  const BareMetalSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<Authorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
    };
  }

  factory BareMetalSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSecurityConfig(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
