// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_from_template_application_from_template_args_doc}
/// The set of arguments for ApplicationFromTemplate.
/// {@endtemplate}
/// {@macro pulumi_index_application_from_template_application_from_template_args_doc}
class ApplicationFromTemplateArgs {
  /// The display name for the application.
  final pulumi.Input<String> displayName;

  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  final pulumi.Input<String> templateId;

  /// Creates a new [ApplicationFromTemplateArgs].
  /// [displayName] The display name for the application.
  /// [templateId] Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  ApplicationFromTemplateArgs({
    required this.displayName,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'templateId': templateId,
    };
  }

  factory ApplicationFromTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationFromTemplateArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
    );
  }
}
