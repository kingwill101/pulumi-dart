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
  PreventionDeidentifyTemplateState({
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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deidentifyConfig: map['deidentifyConfig'] == null ? null : (PreventionDeidentifyTemplateDeidentifyConfig.fromMap((map['deidentifyConfig']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

