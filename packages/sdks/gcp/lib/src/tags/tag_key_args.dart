// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_tag_key_tag_key_args_doc}
/// The set of arguments for TagKey.
/// {@endtemplate}
/// {@macro pulumi_tags_tag_key_tag_key_args_doc}
class TagKeyArgs {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final pulumi.Input<String>? allowedValuesRegex;
  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  final pulumi.Input<String> parent;
  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  final pulumi.Input<String>? purpose;
  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "<project-name>/<vpc-name>"`.
  final pulumi.Input<Map<String, String>>? purposeData;
  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final pulumi.Input<String> shortName;

  /// Creates a new [TagKeyArgs].
  /// [allowedValuesRegex] Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  /// [description] User-assigned description of the TagKey. Must not exceed 256 characters.
  /// [parent] Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  /// [purpose] Optional. A purpose cannot be changed once set.
  /// [purposeData] Optional. Purpose data cannot be changed once set.
  /// [shortName] Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  TagKeyArgs({
    pulumi.Output<String>? allowedValuesRegex,
    pulumi.Output<String>? description,
    required pulumi.Output<String> parent,
    pulumi.Output<String>? purpose,
    pulumi.Output<Map<String, String>>? purposeData,
    required pulumi.Output<String> shortName,
  }) :
      allowedValuesRegex = pulumi.Input.asOptionalInput<String>(allowedValuesRegex),
      description = pulumi.Input.asOptionalInput<String>(description),
      parent = pulumi.Input.asInput<String>(parent),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      purposeData = pulumi.Input.asOptionalInput<Map<String, String>>(purposeData),
      shortName = pulumi.Input.asInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValuesRegex': ?allowedValuesRegex,
      'description': ?description,
      'parent': parent,
      'purpose': ?purpose,
      'purposeData': ?purposeData,
      'shortName': shortName,
    };
  }

  factory TagKeyArgs.fromMap(Map<String, dynamic> map) {
    return TagKeyArgs(
      allowedValuesRegex: map['allowedValuesRegex'] == null ? null : pulumi.Output.create<String>(map['allowedValuesRegex'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      purposeData: map['purposeData'] == null ? null : pulumi.Output.create<Map<String, String>>((map['purposeData'] as Map).cast<String, String>()),
      shortName: pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

