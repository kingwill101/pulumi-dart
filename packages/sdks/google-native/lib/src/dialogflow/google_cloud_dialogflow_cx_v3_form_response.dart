// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_form_parameter_response.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3FormResponse {
  /// Parameters to collect from the user.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3FormParameterResponse>> parameters;

  /// Creates a new [GoogleCloudDialogflowCxV3FormResponse].
  /// [parameters] Parameters to collect from the user.
  const GoogleCloudDialogflowCxV3FormResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3FormParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3FormParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3FormResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FormResponse(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3FormParameterResponse>(map['parameters']!, (value) => GoogleCloudDialogflowCxV3FormParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

