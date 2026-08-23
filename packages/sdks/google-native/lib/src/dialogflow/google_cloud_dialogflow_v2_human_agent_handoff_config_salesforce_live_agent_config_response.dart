// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration specific to Salesforce Live Agent.
class GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse {
  /// Live Agent chat button ID.
  final pulumi.Input<String> buttonId;
  /// Live Agent deployment ID.
  final pulumi.Input<String> deploymentId;
  /// Domain of the Live Agent endpoint for this agent. You can find the endpoint URL in the `Live Agent settings` page. For example if URL has the form https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in d.la4-c2-phx.salesforceliveagent.com.
  final pulumi.Input<String> endpointDomain;
  /// The organization ID of the Salesforce account.
  final pulumi.Input<String> organizationId;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse].
  /// [buttonId] Live Agent chat button ID.
  /// [deploymentId] Live Agent deployment ID.
  /// [endpointDomain] Domain of the Live Agent endpoint for this agent. You can find the endpoint URL in the `Live Agent settings` page. For example if URL has the form https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in d.la4-c2-phx.salesforceliveagent.com.
  /// [organizationId] The organization ID of the Salesforce account.
  const GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse({
    required this.buttonId,
    required this.deploymentId,
    required this.endpointDomain,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonId': buttonId,
      'deploymentId': deploymentId,
      'endpointDomain': endpointDomain,
      'organizationId': organizationId,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfigResponse(
      buttonId: pulumi.Input.fromValue(map['buttonId'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      endpointDomain: pulumi.Input.fromValue(map['endpointDomain'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
