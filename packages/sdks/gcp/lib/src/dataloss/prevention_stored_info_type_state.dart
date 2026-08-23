// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_dictionary.dart';
import 'prevention_stored_info_type_large_custom_dictionary.dart';
import 'prevention_stored_info_type_regex.dart';

/// Input properties used for looking up and filtering PreventionStoredInfoType resources.
class PreventionStoredInfoTypeState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the info type.
  /// [dictionary] Dictionary which defines the rule.
  /// [displayName] User set display name of the info type.
  /// [largeCustomDictionary] Dictionary which defines the rule.
  /// [name] The resource name of the info type. Set by the server.
  /// [parent] The parent of the info type in any of the following formats:
  /// [regex] Regular expression which defines the rule.
  /// [storedInfoTypeId] The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  const PreventionStoredInfoTypeState({
    this.deletionPolicy,
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    this.name,
    this.parent,
    this.regex,
    this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      largeCustomDictionary: (() { final guardedValue = map['largeCustomDictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeLargeCustomDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storedInfoTypeId: (() { final guardedValue = map['storedInfoTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
