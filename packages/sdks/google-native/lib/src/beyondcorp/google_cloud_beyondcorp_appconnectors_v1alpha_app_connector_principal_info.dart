// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_principal_info_service_account.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo {
  /// A GCP service account.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount>? serviceAccount;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo].
  /// [serviceAccount] A GCP service account.
  const GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
