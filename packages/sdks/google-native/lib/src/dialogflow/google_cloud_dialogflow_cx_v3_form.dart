// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_form_parameter.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3Form {
  /// Parameters to collect from the user.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3FormParameter>>? parameters;

  /// Creates a new [GoogleCloudDialogflowCxV3Form].
  /// [parameters] Parameters to collect from the user.
  const GoogleCloudDialogflowCxV3Form({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3FormParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3FormParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3Form.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Form(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3FormParameter>(guardedValue, (value) => GoogleCloudDialogflowCxV3FormParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

