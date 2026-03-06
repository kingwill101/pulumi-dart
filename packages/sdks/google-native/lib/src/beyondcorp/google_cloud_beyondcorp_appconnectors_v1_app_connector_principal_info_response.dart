// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1_app_connector_principal_info_service_account_response.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse {
  /// A GCP service account.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse> serviceAccount;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse].
  /// [serviceAccount] A GCP service account.
  const GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse(
      serviceAccount: pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())),
    );
  }
}

