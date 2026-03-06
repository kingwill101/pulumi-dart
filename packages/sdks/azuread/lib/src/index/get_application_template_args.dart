// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_application_template_get_application_template_args_doc}
/// Arguments for getApplicationTemplate.
/// {@endtemplate}
/// {@macro pulumi_index_get_application_template_get_application_template_args_doc}
class GetApplicationTemplateArgs {
  /// Specifies the display name of the templated application.
  final pulumi.Input<String>? displayName;
  /// Specifies the ID of the templated application.
  ///
  /// &gt; One of `template_id` or `display_name` must be specified.
  final pulumi.Input<String>? templateId;

  /// Creates a new [GetApplicationTemplateArgs].
  /// [displayName] Specifies the display name of the templated application.
  /// [templateId] Specifies the ID of the templated application.
  const GetApplicationTemplateArgs({
    this.displayName,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'templateId': ?templateId,
    };
  }

  factory GetApplicationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationTemplateArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

