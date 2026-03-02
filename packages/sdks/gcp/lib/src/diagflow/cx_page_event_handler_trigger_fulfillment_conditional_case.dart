// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageEventHandlerTriggerFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final pulumi.Input<String>? cases;

  /// Creates a new [CxPageEventHandlerTriggerFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxPageEventHandlerTriggerFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases,
    };
  }

  factory CxPageEventHandlerTriggerFulfillmentConditionalCase.fromMap(Map<String, dynamic> map) {
    return CxPageEventHandlerTriggerFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : (map['cases']! as String).input(),
    );
  }
}

