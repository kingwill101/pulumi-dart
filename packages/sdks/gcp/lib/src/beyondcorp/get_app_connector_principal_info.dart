// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_principal_info_service_account.dart';

class GetAppConnectorPrincipalInfo {
  /// ServiceAccount represents a GCP service account.
  final pulumi.Input<List<GetAppConnectorPrincipalInfoServiceAccount>> serviceAccounts;

  /// Creates a new [GetAppConnectorPrincipalInfo].
  /// [serviceAccounts] ServiceAccount represents a GCP service account.
  GetAppConnectorPrincipalInfo({
    required this.serviceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccounts': pulumi.Input.mapInputValue<List<GetAppConnectorPrincipalInfoServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<GetAppConnectorPrincipalInfoServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppConnectorPrincipalInfo.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorPrincipalInfo(
      serviceAccounts: (pulumi.Input.decodeList<GetAppConnectorPrincipalInfoServiceAccount>(map['serviceAccounts'], (value) => GetAppConnectorPrincipalInfoServiceAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

