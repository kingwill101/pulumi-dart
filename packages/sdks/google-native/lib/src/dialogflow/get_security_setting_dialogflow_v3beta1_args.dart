// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_security_setting_dialogflow_v3beta1_args_doc}
/// Arguments for getSecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_security_setting_dialogflow_v3beta1_args_doc}
class GetSecuritySettingDialogflowV3beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securitySettingId;

  /// Creates a new [GetSecuritySettingDialogflowV3beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [securitySettingId] Required.
  const GetSecuritySettingDialogflowV3beta1Args({
    required this.location,
    this.project,
    required this.securitySettingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'securitySettingId': securitySettingId,
    };
  }

  factory GetSecuritySettingDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingDialogflowV3beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettingId: pulumi.Input.fromValue(map['securitySettingId'] as String),
    );
  }
}
