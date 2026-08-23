// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_gkehub_v1beta.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecGkehubV1beta {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethodGkehubV1beta>>? authMethods;

  /// Creates a new [IdentityServiceMembershipSpecGkehubV1beta].
  /// [authMethods] A member may support multiple auth methods.
  const IdentityServiceMembershipSpecGkehubV1beta({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods': ?pulumi.Input.mapOptionalInputValue<List<IdentityServiceAuthMethodGkehubV1beta>, List<Map<String, dynamic>>>(authMethods, (value) => pulumi.Input.encodeList<IdentityServiceAuthMethodGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityServiceMembershipSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpecGkehubV1beta(
      authMethods: (() { final guardedValue = map['authMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IdentityServiceAuthMethodGkehubV1beta>(guardedValue, (value) => IdentityServiceAuthMethodGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
