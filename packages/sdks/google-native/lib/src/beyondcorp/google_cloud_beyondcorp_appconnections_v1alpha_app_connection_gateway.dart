// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnections_v1alpha_app_connection_gateway_type.dart';

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway {
  /// AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  final pulumi.Input<String> appGateway;
  /// The type of hosting used by the gateway.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType> type;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway].
  /// [appGateway] AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  /// [type] The type of hosting used by the gateway.
  const GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway({
    required this.appGateway,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'type': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway(
      appGateway: pulumi.Input.fromValue(map['appGateway'] as String),
      type: pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType.fromValue(map['type']! as String)),
    );
  }
}
