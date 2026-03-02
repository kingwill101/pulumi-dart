// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_principal_info_service_account.dart';

class AppConnectorPrincipalInfo {
  /// ServiceAccount represents a GCP service account.
  /// Structure is documented below.
  final pulumi.Input<AppConnectorPrincipalInfoServiceAccount> serviceAccount;

  /// Creates a new [AppConnectorPrincipalInfo].
  /// [serviceAccount] ServiceAccount represents a GCP service account.
  AppConnectorPrincipalInfo({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': pulumi.Input.mapInputValue<AppConnectorPrincipalInfoServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory AppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return AppConnectorPrincipalInfo(
      serviceAccount: (AppConnectorPrincipalInfoServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

