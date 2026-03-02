// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config.dart';

/// Input properties used for looking up and filtering PreventionInspectTemplate resources.
class PreventionInspectTemplateState {
  /// A description of the inspect template.
  final pulumi.Input<String>? description;
  /// User set display name of the inspect template.
  final pulumi.Input<String>? displayName;
  /// The core content of the template.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfig>? inspectConfig;
  /// The resource name of the inspect template. Set by the server.
  final pulumi.Input<String>? name;
  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String>? parent;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [PreventionInspectTemplateState].
  /// [description] A description of the inspect template.
  /// [displayName] User set display name of the inspect template.
  /// [inspectConfig] The core content of the template.
  /// [name] The resource name of the inspect template. Set by the server.
  /// [parent] The parent of the inspect template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionInspectTemplateState({
    this.description,
    this.displayName,
    this.inspectConfig,
    this.name,
    this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'templateId': ?templateId,
    };
  }

  factory PreventionInspectTemplateState.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      inspectConfig: map['inspectConfig'] == null ? null : (PreventionInspectTemplateInspectConfig.fromMap((map['inspectConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
    );
  }
}

