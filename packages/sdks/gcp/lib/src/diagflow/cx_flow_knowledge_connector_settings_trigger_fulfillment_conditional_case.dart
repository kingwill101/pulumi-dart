// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final pulumi.Input<String>? cases;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  const CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases,
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCase(
      cases: (() { final guardedValue = map['cases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
