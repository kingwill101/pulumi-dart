// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_gkehub_v1alpha.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecGkehubV1alpha {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethodGkehubV1alpha>>? authMethods;

  /// Creates a new [IdentityServiceMembershipSpecGkehubV1alpha].
  /// [authMethods] A member may support multiple auth methods.
  IdentityServiceMembershipSpecGkehubV1alpha({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods': ?pulumi.Input.mapOptionalInputValue<List<IdentityServiceAuthMethodGkehubV1alpha>, List<Map<String, dynamic>>>(authMethods, (value) => pulumi.Input.encodeList<IdentityServiceAuthMethodGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityServiceMembershipSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecGkehubV1alpha(
      authMethods: map['authMethods'] == null ? null : (pulumi.Input.decodeList<IdentityServiceAuthMethodGkehubV1alpha>(map['authMethods'], (value) => IdentityServiceAuthMethodGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

