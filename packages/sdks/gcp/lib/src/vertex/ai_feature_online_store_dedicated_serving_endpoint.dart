// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_dedicated_serving_endpoint_private_service_connect_config.dart';

class AiFeatureOnlineStoreDedicatedServingEndpoint {
  /// Private service connect config.
  /// Structure is documented below.
  final pulumi.Input<
    AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig
  >?
  privateServiceConnectConfig;

  /// (Output)
  /// Domain name to use for this FeatureOnlineStore
  final pulumi.Input<String>? publicEndpointDomainName;

  /// (Output)
  /// Name of the service attachment resource. Applicable only if private service connect is enabled and after FeatureViewSync is created.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [AiFeatureOnlineStoreDedicatedServingEndpoint].
  /// [privateServiceConnectConfig] Private service connect config.
  /// [publicEndpointDomainName] (Output)
  /// [serviceAttachment] (Output)
  AiFeatureOnlineStoreDedicatedServingEndpoint({
    this.privateServiceConnectConfig,
    this.publicEndpointDomainName,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateServiceConnectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig,
            Map<String, dynamic>
          >(privateServiceConnectConfig, (value) => value.toMap()),
      'publicEndpointDomainName': ?publicEndpointDomainName,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory AiFeatureOnlineStoreDedicatedServingEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreDedicatedServingEndpoint(
      privateServiceConnectConfig: (() {
        final guardedValue = map['privateServiceConnectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicEndpointDomainName: (() {
        final guardedValue = map['publicEndpointDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAttachment: (() {
        final guardedValue = map['serviceAttachment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
