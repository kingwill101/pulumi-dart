// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_dictionary.dart';
import 'prevention_stored_info_type_large_custom_dictionary.dart';
import 'prevention_stored_info_type_regex.dart';

/// Input properties used for looking up and filtering PreventionStoredInfoType resources.
class PreventionStoredInfoTypeState {
  /// A description of the info type.
  final pulumi.Input<String>? description;
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeDictionary>? dictionary;
  /// User set display name of the info type.
  final pulumi.Input<String>? displayName;
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeLargeCustomDictionary>? largeCustomDictionary;
  /// The resource name of the info type. Set by the server.
  final pulumi.Input<String>? name;
  /// The parent of the info type in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String>? parent;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeRegex>? regex;
  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
  /// characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  /// Creates a new [PreventionStoredInfoTypeState].
  /// [description] A description of the info type.
  /// [dictionary] Dictionary which defines the rule.
  /// [displayName] User set display name of the info type.
  /// [largeCustomDictionary] Dictionary which defines the rule.
  /// [name] The resource name of the info type. Set by the server.
  /// [parent] The parent of the info type in any of the following formats:
  /// [regex] Regular expression which defines the rule.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionStoredInfoTypeState({
    pulumi.Output<String>? description,
    pulumi.Output<PreventionStoredInfoTypeDictionary>? dictionary,
    pulumi.Output<String>? displayName,
    pulumi.Output<PreventionStoredInfoTypeLargeCustomDictionary>? largeCustomDictionary,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<PreventionStoredInfoTypeRegex>? regex,
    pulumi.Output<String>? storedInfoTypeId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dictionary = pulumi.Input.asOptionalInput<PreventionStoredInfoTypeDictionary>(dictionary),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      largeCustomDictionary = pulumi.Input.asOptionalInput<PreventionStoredInfoTypeLargeCustomDictionary>(largeCustomDictionary),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      regex = pulumi.Input.asOptionalInput<PreventionStoredInfoTypeRegex>(regex),
      storedInfoTypeId = pulumi.Input.asOptionalInput<String>(storedInfoTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'displayName': ?displayName,
      'largeCustomDictionary': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeLargeCustomDictionary, Map<String, dynamic>>(largeCustomDictionary, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'storedInfoTypeId': ?storedInfoTypeId,
    };
  }

  factory PreventionStoredInfoTypeState.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dictionary: map['dictionary'] == null ? null : pulumi.Output.create<PreventionStoredInfoTypeDictionary>(PreventionStoredInfoTypeDictionary.fromMap((map['dictionary'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      largeCustomDictionary: map['largeCustomDictionary'] == null ? null : pulumi.Output.create<PreventionStoredInfoTypeLargeCustomDictionary>(PreventionStoredInfoTypeLargeCustomDictionary.fromMap((map['largeCustomDictionary'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      regex: map['regex'] == null ? null : pulumi.Output.create<PreventionStoredInfoTypeRegex>(PreventionStoredInfoTypeRegex.fromMap((map['regex'] as Map).cast<String, dynamic>())),
      storedInfoTypeId: map['storedInfoTypeId'] == null ? null : pulumi.Output.create<String>(map['storedInfoTypeId'] as String),
    );
  }
}

