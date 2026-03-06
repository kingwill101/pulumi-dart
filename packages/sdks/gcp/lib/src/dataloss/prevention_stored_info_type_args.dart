// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_dictionary.dart';
import 'prevention_stored_info_type_large_custom_dictionary.dart';
import 'prevention_stored_info_type_regex.dart';

/// {@template pulumi_dataloss_prevention_stored_info_type_prevention_stored_info_type_args_doc}
/// The set of arguments for PreventionStoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_stored_info_type_prevention_stored_info_type_args_doc}
class PreventionStoredInfoTypeArgs {
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
  /// The parent of the info type in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeRegex>? regex;
  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
  /// characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? storedInfoTypeId;

  /// Creates a new [PreventionStoredInfoTypeArgs].
  /// [description] A description of the info type.
  /// [dictionary] Dictionary which defines the rule.
  /// [displayName] User set display name of the info type.
  /// [largeCustomDictionary] Dictionary which defines the rule.
  /// [parent] The parent of the info type in any of the following formats:
  /// [regex] Regular expression which defines the rule.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  const PreventionStoredInfoTypeArgs({
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    required this.parent,
    this.regex,
    this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'displayName': ?displayName,
      'largeCustomDictionary': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeLargeCustomDictionary, Map<String, dynamic>>(largeCustomDictionary, (value) => value.toMap()),
      'parent': parent,
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'storedInfoTypeId': ?storedInfoTypeId,
    };
  }

  factory PreventionStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      largeCustomDictionary: (() { final guardedValue = map['largeCustomDictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeLargeCustomDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storedInfoTypeId: (() { final guardedValue = map['storedInfoTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

