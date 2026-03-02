// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_private_service_connect_config.dart';

/// The dedicated serving endpoint for this FeatureOnlineStore. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
class GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint {
  /// Optional. Private service connect config. If PrivateServiceConnectConfig.enable_private_service_connect set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig>? privateServiceConnectConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint].
  /// [privateServiceConnectConfig] Optional. Private service connect config. If PrivateServiceConnectConfig.enable_private_service_connect set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint({
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint(
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null ? null : (GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig.fromMap((map['privateServiceConnectConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

