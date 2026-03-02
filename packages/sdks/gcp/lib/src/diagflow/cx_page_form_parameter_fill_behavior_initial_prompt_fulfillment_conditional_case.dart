// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final pulumi.Input<String>? cases;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : (map['cases']! as String).input(),
    );
  }
}

