// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutual_tls.dart';

/// [Deprecated] Configuration for the peer authentication method. Configuration for the peer authentication method.
class PeerAuthenticationMethod {
  /// Set if mTLS is used for peer authentication.
  final pulumi.Input<MutualTls>? mtls;

  /// Creates a new [PeerAuthenticationMethod].
  /// [mtls] Set if mTLS is used for peer authentication.
  PeerAuthenticationMethod({
    this.mtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': ?pulumi.Input.mapOptionalInputValue<MutualTls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
    };
  }

  factory PeerAuthenticationMethod.fromMap(Map<String, dynamic> map) {
    return PeerAuthenticationMethod(
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MutualTls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

