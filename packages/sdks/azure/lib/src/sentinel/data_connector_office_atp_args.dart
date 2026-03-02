// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_office_atp_data_connector_office_atp_args_doc}
/// The set of arguments for DataConnectorOfficeAtp.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_office_atp_data_connector_office_atp_args_doc}
class DataConnectorOfficeAtpArgs {
  /// The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorOfficeAtpArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created.
  /// [name] The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created.
  DataConnectorOfficeAtpArgs({
    required this.logAnalyticsWorkspaceId,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorOfficeAtpArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorOfficeAtpArgs(
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

