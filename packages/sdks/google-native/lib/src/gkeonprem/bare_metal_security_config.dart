// ignore_for_file: unused_element, unnecessary_cast

import 'authorization.dart';

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfig {
  /// Configures user access to the user cluster.
  final Authorization? authorization;

  /// Creates a new [BareMetalSecurityConfig].
  /// [authorization] Configures user access to the user cluster.
  BareMetalSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
    };
  }

  factory BareMetalSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSecurityConfig(
      authorization: map['authorization'] == null ? null : Authorization.fromMap((map['authorization'] as Map).cast<String, dynamic>()),
    );
  }
}

