// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';

/// Specifies the security related settings for the bare metal admin cluster.
class BareMetalAdminSecurityConfigResponse {
  /// Configures user access to the admin cluster.
  final pulumi.Input<AuthorizationResponse> authorization;

  /// Creates a new [BareMetalAdminSecurityConfigResponse].
  /// [authorization] Configures user access to the admin cluster.
  BareMetalAdminSecurityConfigResponse({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': pulumi.Input.mapInputValue<AuthorizationResponse, Map<String, dynamic>>(authorization, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminSecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminSecurityConfigResponse(
      authorization: pulumi.Input.fromValue(AuthorizationResponse.fromMap((map['authorization']! as Map).cast<String, dynamic>())),
    );
  }
}

