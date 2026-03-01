// ignore_for_file: unused_element, unnecessary_cast

import 'authorization.dart';

/// Specifies the security related settings for the bare metal admin cluster.
class BareMetalAdminSecurityConfig {
  /// Configures user access to the admin cluster.
  final Authorization? authorization;

  /// Creates a new [BareMetalAdminSecurityConfig].
  /// [authorization] Configures user access to the admin cluster.
  BareMetalAdminSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
    };
  }

  factory BareMetalAdminSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminSecurityConfig(
      authorization: map['authorization'] == null ? null : Authorization.fromMap((map['authorization'] as Map).cast<String, dynamic>()),
    );
  }
}

