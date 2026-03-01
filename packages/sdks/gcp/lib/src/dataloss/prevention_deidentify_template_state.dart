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
    pulumi.Output<String>? createTime,
    pulumi.Output<PreventionDeidentifyTemplateDeidentifyConfig>? deidentifyConfig,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deidentifyConfig = pulumi.Input.asOptionalInput<PreventionDeidentifyTemplateDeidentifyConfig>(deidentifyConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deidentifyConfig: map['deidentifyConfig'] == null ? null : pulumi.Output.create<PreventionDeidentifyTemplateDeidentifyConfig>(PreventionDeidentifyTemplateDeidentifyConfig.fromMap((map['deidentifyConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

