// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_security_setting_args_doc}
/// Arguments for getSecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_security_setting_args_doc}
class GetSecuritySettingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securitySettingId;

  /// Creates a new [GetSecuritySettingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [securitySettingId] Required.
  GetSecuritySettingArgs({
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

  factory GetSecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettingId: pulumi.Input.fromValue(map['securitySettingId'] as String),
    );
  }
}

