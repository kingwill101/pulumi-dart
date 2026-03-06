// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_deployed_index_auth_config_auth_provider_response.dart';

/// Used to set up the auth on the DeployedIndex's private endpoint.
class GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse {
  /// Defines the authentication provider that the DeployedIndex uses.
  final pulumi.Input<GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse> authProvider;

  /// Creates a new [GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse].
  /// [authProvider] Defines the authentication provider that the DeployedIndex uses.
  const GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse({
    required this.authProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProvider': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse, Map<String, dynamic>>(authProvider, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedIndexAuthConfigResponse(
      authProvider: pulumi.Input.fromValue(GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProviderResponse.fromMap((map['authProvider']! as Map).cast<String, dynamic>())),
    );
  }
}

