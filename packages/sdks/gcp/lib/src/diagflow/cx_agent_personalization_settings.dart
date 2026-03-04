// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxAgentPersonalizationSettings {
  /// Default end user metadata, used when processing DetectIntent requests. Recommended to be filled as a template instead of hard-coded value, for example { "age": "$session.params.age" }.
  /// The data will be merged with the [QueryParameters.end_user_metadata](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/QueryParameters#FIELDS.end_user_metadata)
  /// in [DetectIntentRequest.query_params](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#body.request_body.FIELDS.query_params) during query processing.
  /// This field uses JSON data as a string. The value provided must be a valid JSON representation documented in [Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct).
  final pulumi.Input<String>? defaultEndUserMetadata;

  /// Creates a new [CxAgentPersonalizationSettings].
  /// [defaultEndUserMetadata] Default end user metadata, used when processing DetectIntent requests. Recommended to be filled as a template instead of hard-coded value, for example { "age": "$session.params.age" }.
  CxAgentPersonalizationSettings({this.defaultEndUserMetadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultEndUserMetadata': ?defaultEndUserMetadata};
  }

  factory CxAgentPersonalizationSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentPersonalizationSettings(
      defaultEndUserMetadata: (() {
        final guardedValue = map['defaultEndUserMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
