// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_data_authorization_response.dart';
import 'application_provider_authorization_response.dart';

class AuthorizedApplicationPropertiesResponse {
  /// The authorizations that determine the level of data access permissions on the specified resource types.
  final List<ApplicationDataAuthorizationResponse>? dataAuthorizations;
  final ApplicationProviderAuthorizationResponse? providerAuthorization;
  /// The provisioning state.
  final String provisioningState;

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
      'dataAuthorizations': ?dataAuthorizations == null ? null : pulumi.Input.encodeList<ApplicationDataAuthorizationResponse, Map<String, dynamic>>(dataAuthorizations!, (value) => value.toMap()),
      'providerAuthorization': ?providerAuthorization == null ? null : providerAuthorization!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory AuthorizedApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizedApplicationPropertiesResponse(
      dataAuthorizations: map['dataAuthorizations'] == null ? null : pulumi.Input.decodeList<ApplicationDataAuthorizationResponse>(map['dataAuthorizations'], (value) => ApplicationDataAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      providerAuthorization: map['providerAuthorization'] == null ? null : ApplicationProviderAuthorizationResponse.fromMap((map['providerAuthorization'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

