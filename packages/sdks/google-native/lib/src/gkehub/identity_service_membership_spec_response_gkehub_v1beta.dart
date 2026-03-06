// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_response_gkehub_v1beta.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponseGkehubV1beta {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethodResponseGkehubV1beta>> authMethods;

  /// Creates a new [IdentityServiceMembershipSpecResponseGkehubV1beta].
  /// [authMethods] A member may support multiple auth methods.
  const IdentityServiceMembershipSpecResponseGkehubV1beta({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods': pulumi.Input.mapInputValue<List<IdentityServiceAuthMethodResponseGkehubV1beta>, List<Map<String, dynamic>>>(authMethods, (value) => pulumi.Input.encodeList<IdentityServiceAuthMethodResponseGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityServiceMembershipSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponseGkehubV1beta(
      authMethods: pulumi.Input.fromValue(pulumi.Input.decodeList<IdentityServiceAuthMethodResponseGkehubV1beta>(map['authMethods']!, (value) => IdentityServiceAuthMethodResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

