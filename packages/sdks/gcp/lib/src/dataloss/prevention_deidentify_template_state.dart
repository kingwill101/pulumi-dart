// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config.dart';

/// Input properties used for looking up and filtering PreventionDeidentifyTemplate resources.
class PreventionDeidentifyTemplateState {
  /// The creation timestamp of an deidentifyTemplate. Set by the server.
  final pulumi.Input<String>? createTime;
  /// Configuration of the deidentify template
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfig>? deidentifyConfig;
  /// A description of the template.
  final pulumi.Input<String>? description;
  /// User set display name of the template.
  final pulumi.Input<String>? displayName;
  /// The resource name of the template. Set by the server.
  final pulumi.Input<String>? name;
  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String>? parent;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;
  /// The last update timestamp of an deidentifyTemplate. Set by the server.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PreventionDeidentifyTemplateState].
  /// [createTime] The creation timestamp of an deidentifyTemplate. Set by the server.
  /// [deidentifyConfig] Configuration of the deidentify template
  /// [description] A description of the template.
  /// [displayName] User set display name of the template.
  /// [name] The resource name of the template. Set by the server.
  /// [parent] The parent of the template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// [updateTime] The last update timestamp of an deidentifyTemplate. Set by the server.
  const PreventionDeidentifyTemplateState({
    this.createTime,
    this.deidentifyConfig,
    this.description,
    this.displayName,
    this.name,
    this.parent,
    this.templateId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deidentifyConfig': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfig, Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'parent': ?parent,
      'templateId': ?templateId,
      'updateTime': ?updateTime,
    };
  }

  factory PreventionDeidentifyTemplateState.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deidentifyConfig: (() { final guardedValue = map['deidentifyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

