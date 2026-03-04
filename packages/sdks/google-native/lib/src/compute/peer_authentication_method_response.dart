// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutual_tls_response.dart';

/// [Deprecated] Configuration for the peer authentication method. Configuration for the peer authentication method.
class PeerAuthenticationMethodResponse {
  /// Set if mTLS is used for peer authentication.
  final pulumi.Input<MutualTlsResponse> mtls;

  /// Creates a new [PeerAuthenticationMethodResponse].
  /// [mtls] Set if mTLS is used for peer authentication.
  PeerAuthenticationMethodResponse({required this.mtls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls':
          pulumi.Input.mapInputValue<MutualTlsResponse, Map<String, dynamic>>(
            mtls,
            (value) => value.toMap(),
          ),
    };
  }

  factory PeerAuthenticationMethodResponse.fromMap(Map<String, dynamic> map) {
    return PeerAuthenticationMethodResponse(
      mtls: pulumi.Input.fromValue(
        MutualTlsResponse.fromMap(
          (map['mtls']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
