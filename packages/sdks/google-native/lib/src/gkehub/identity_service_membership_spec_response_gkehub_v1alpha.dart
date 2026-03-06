// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_response_gkehub_v1alpha.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponseGkehubV1alpha {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethodResponseGkehubV1alpha>> authMethods;

  /// Creates a new [IdentityServiceMembershipSpecResponseGkehubV1alpha].
  /// [authMethods] A member may support multiple auth methods.
  const IdentityServiceMembershipSpecResponseGkehubV1alpha({
    required this.authMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods': pulumi.Input.mapInputValue<List<IdentityServiceAuthMethodResponseGkehubV1alpha>, List<Map<String, dynamic>>>(authMethods, (value) => pulumi.Input.encodeList<IdentityServiceAuthMethodResponseGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityServiceMembershipSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecResponseGkehubV1alpha(
      authMethods: pulumi.Input.fromValue(pulumi.Input.decodeList<IdentityServiceAuthMethodResponseGkehubV1alpha>(map['authMethods']!, (value) => IdentityServiceAuthMethodResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

