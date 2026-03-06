// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfigResponse {
  /// Configures user access to the user cluster.
  final pulumi.Input<AuthorizationResponse> authorization;

  /// Creates a new [BareMetalSecurityConfigResponse].
  /// [authorization] Configures user access to the user cluster.
  const BareMetalSecurityConfigResponse({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': pulumi.Input.mapInputValue<AuthorizationResponse, Map<String, dynamic>>(authorization, (value) => value.toMap()),
    };
  }

  factory BareMetalSecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalSecurityConfigResponse(
      authorization: pulumi.Input.fromValue(AuthorizationResponse.fromMap((map['authorization']! as Map).cast<String, dynamic>())),
    );
  }
}

