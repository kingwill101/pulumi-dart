// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorOfficeAtp resources.
class DataConnectorOfficeAtpState {
  /// The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorOfficeAtpState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created.
  /// [name] The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created.
  DataConnectorOfficeAtpState({
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? tenantId,
  }) :
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorOfficeAtpState.fromMap(Map<String, dynamic> map) {
    return DataConnectorOfficeAtpState(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

