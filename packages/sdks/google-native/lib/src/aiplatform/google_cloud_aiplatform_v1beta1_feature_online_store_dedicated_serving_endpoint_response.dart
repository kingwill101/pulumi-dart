// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_private_service_connect_config_response.dart';

/// The dedicated serving endpoint for this FeatureOnlineStore. Only need to set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
class GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse {
  /// Optional. Private service connect config. If PrivateServiceConnectConfig.enable_private_service_connect set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfigResponse> privateServiceConnectConfig;
  /// This field will be populated with the domain name to use for this FeatureOnlineStore
  final pulumi.Input<String> publicEndpointDomainName;
  /// The name of the service attachment resource. Populated if private service connect is enabled and after FeatureViewSync is created.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse].
  /// [privateServiceConnectConfig] Optional. Private service connect config. If PrivateServiceConnectConfig.enable_private_service_connect set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  /// [publicEndpointDomainName] This field will be populated with the domain name to use for this FeatureOnlineStore
  /// [serviceAttachment] The name of the service attachment resource. Populated if private service connect is enabled and after FeatureViewSync is created.
  const GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse({
    required this.privateServiceConnectConfig,
    required this.publicEndpointDomainName,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateServiceConnectConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfigResponse, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
      'publicEndpointDomainName': publicEndpointDomainName,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse(
      privateServiceConnectConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PrivateServiceConnectConfigResponse.fromMap((map['privateServiceConnectConfig']! as Map).cast<String, dynamic>())),
      publicEndpointDomainName: pulumi.Input.fromValue(map['publicEndpointDomainName'] as String),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
