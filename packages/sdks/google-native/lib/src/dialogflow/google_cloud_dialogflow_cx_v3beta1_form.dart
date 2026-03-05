// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_form_parameter.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3beta1Form {
  /// Parameters to collect from the user.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1FormParameter>>? parameters;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1Form].
  /// [parameters] Parameters to collect from the user.
  GoogleCloudDialogflowCxV3beta1Form({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1FormParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1FormParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1Form.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1Form(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1FormParameter>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1FormParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

