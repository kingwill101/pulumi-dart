// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_code_flow_config.dart';

/// Additional config for SignInWithApple.
class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig {
  /// A list of Bundle ID's usable by this project
  final pulumi.Input<List<String>>? bundleIds;
  final pulumi.Input<GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig>? codeFlowConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig].
  /// [bundleIds] A list of Bundle ID's usable by this project
  /// [codeFlowConfig] Optional.
  GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig({
    this.bundleIds,
    this.codeFlowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleIds': ?bundleIds,
      'codeFlowConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig, Map<String, dynamic>>(codeFlowConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig(
      bundleIds: map['bundleIds'] == null ? null : ((map['bundleIds'] as List).cast<String>()).input(),
      codeFlowConfig: map['codeFlowConfig'] == null ? null : (GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig.fromMap((map['codeFlowConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

