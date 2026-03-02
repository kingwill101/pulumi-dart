// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpec {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethod>>? authMethods;

  /// Creates a new [IdentityServiceMembershipSpec].
  /// [authMethods] A member may support multiple auth methods.
  IdentityServiceMembershipSpec({
    this.authMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods': ?pulumi.Input.mapOptionalInputValue<List<IdentityServiceAuthMethod>, List<Map<String, dynamic>>>(authMethods, (value) => pulumi.Input.encodeList<IdentityServiceAuthMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityServiceMembershipSpec.fromMap(Map<String, dynamic> map) {
    return IdentityServiceMembershipSpec(
      authMethods: map['authMethods'] == null ? null : (pulumi.Input.decodeList<IdentityServiceAuthMethod>(map['authMethods'], (value) => IdentityServiceAuthMethod.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

