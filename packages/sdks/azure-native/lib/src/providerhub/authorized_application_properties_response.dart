// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_data_authorization_response.dart';
import 'application_provider_authorization_response.dart';

class AuthorizedApplicationPropertiesResponse {
  /// The authorizations that determine the level of data access permissions on the specified resource types.
  final pulumi.Input<List<ApplicationDataAuthorizationResponse>>? dataAuthorizations;
  final pulumi.Input<ApplicationProviderAuthorizationResponse>? providerAuthorization;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AuthorizedApplicationPropertiesResponse].
  /// [dataAuthorizations] The authorizations that determine the level of data access permissions on the specified resource types.
  /// [providerAuthorization] Optional.
  /// [provisioningState] The provisioning state.
  AuthorizedApplicationPropertiesResponse({
    this.dataAuthorizations,
    this.providerAuthorization,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDataAuthorizationResponse>, List<Map<String, dynamic>>>(dataAuthorizations, (value) => pulumi.Input.encodeList<ApplicationDataAuthorizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'providerAuthorization': ?pulumi.Input.mapOptionalInputValue<ApplicationProviderAuthorizationResponse, Map<String, dynamic>>(providerAuthorization, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory AuthorizedApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizedApplicationPropertiesResponse(
      dataAuthorizations: map['dataAuthorizations'] == null ? null : (pulumi.Input.decodeList<ApplicationDataAuthorizationResponse>(map['dataAuthorizations']!, (value) => ApplicationDataAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      providerAuthorization: map['providerAuthorization'] == null ? null : (ApplicationProviderAuthorizationResponse.fromMap((map['providerAuthorization']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

