// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_code_flow_config_response.dart';

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse {
  /// A list of Bundle ID's usable by this project
  final pulumi.Input<List<String>> bundleIds;
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse>
  codeFlowConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse].
  /// [bundleIds] A list of Bundle ID's usable by this project
  /// [codeFlowConfig] Required.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse({
    required this.bundleIds,
    required this.codeFlowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleIds': bundleIds,
      'codeFlowConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse,
            Map<String, dynamic>
          >(codeFlowConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse(
      bundleIds: pulumi.Input.fromValue(
        (map['bundleIds'] as List).cast<String>(),
      ),
      codeFlowConfig: pulumi.Input.fromValue(
        GoogleCloudIdentitytoolkitAdminV2CodeFlowConfigResponse.fromMap(
          (map['codeFlowConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
