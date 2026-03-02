// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1_app_connector_principal_info_service_account.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo {
  /// A GCP service account.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount>? serviceAccount;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo].
  /// [serviceAccount] A GCP service account.
  GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo(
      serviceAccount: map['serviceAccount'] == null ? null : (GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

