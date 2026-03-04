// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_auth_method_response.dart';

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpecResponse {
  /// A member may support multiple auth methods.
  final pulumi.Input<List<IdentityServiceAuthMethodResponse>> authMethods;

  /// Creates a new [IdentityServiceMembershipSpecResponse].
  /// [authMethods] A member may support multiple auth methods.
  IdentityServiceMembershipSpecResponse({required this.authMethods});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethods':
          pulumi.Input.mapInputValue<
            List<IdentityServiceAuthMethodResponse>,
            List<Map<String, dynamic>>
          >(
            authMethods,
            (value) =>
                pulumi.Input.encodeList<
                  IdentityServiceAuthMethodResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory IdentityServiceMembershipSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceMembershipSpecResponse(
      authMethods: pulumi.Input.fromValue(
        pulumi.Input.decodeList<IdentityServiceAuthMethodResponse>(
          map['authMethods']!,
          (value) => IdentityServiceAuthMethodResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
