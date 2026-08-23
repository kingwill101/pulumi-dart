// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorOfficeIrm resources.
class DataConnectorOfficeIrmState {
  /// The ID of the Log Analytics Workspace that this Office IRM Data Connector resides in. Changing this forces a new Office IRM Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Office IRM Data Connector. Changing this forces a new Office IRM Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Office IRM Data Connector connects to. Changing this forces a new Office IRM Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorOfficeIrmState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Office IRM Data Connector resides in. Changing this forces a new Office IRM Data Connector to be created.
  /// [name] The name which should be used for this Office IRM Data Connector. Changing this forces a new Office IRM Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Office IRM Data Connector connects to. Changing this forces a new Office IRM Data Connector to be created.
  const DataConnectorOfficeIrmState({
    this.logAnalyticsWorkspaceId,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorOfficeIrmState.fromMap(Map<String, dynamic> map) {
    return DataConnectorOfficeIrmState(
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
