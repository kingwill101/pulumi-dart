// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_deployed_index_deployed_index_auth_config_auth_provider.dart';

class AiIndexEndpointDeployedIndexDeployedIndexAuthConfig {
  /// Defines the authentication provider that the DeployedIndex uses.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider>? authProvider;

  /// Creates a new [AiIndexEndpointDeployedIndexDeployedIndexAuthConfig].
  /// [authProvider] Defines the authentication provider that the DeployedIndex uses.
  AiIndexEndpointDeployedIndexDeployedIndexAuthConfig({
    this.authProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProvider': ?pulumi.Input.mapOptionalInputValue<AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider, Map<String, dynamic>>(authProvider, (value) => value.toMap()),
    };
  }

  factory AiIndexEndpointDeployedIndexDeployedIndexAuthConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexDeployedIndexAuthConfig(
      authProvider: map['authProvider'] == null ? null : (AiIndexEndpointDeployedIndexDeployedIndexAuthConfigAuthProvider.fromMap((map['authProvider'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

