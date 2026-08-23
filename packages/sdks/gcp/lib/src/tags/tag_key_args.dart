// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_tag_key_tag_key_args_doc}
/// The set of arguments for TagKey.
/// {@endtemplate}
/// {@macro pulumi_tags_tag_key_tag_key_args_doc}
class TagKeyArgs {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final pulumi.Input<String>? allowedValuesRegex;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-assigned description of the TagKey. Must not exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  final pulumi.Input<String> parent;
  /// Optional. A purpose cannot be changed once set.
  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag.
  /// Possible values are: `GCE_FIREWALL`, `DATA_GOVERNANCE`.
  final pulumi.Input<String>? purpose;
  /// Optional. Purpose data cannot be changed once set.
  /// Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: `network = "&lt;project-name&gt;/&lt;vpc-name&gt;"`.
  final pulumi.Input<Map<String, String>>? purposeData;
  /// Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  /// The short name can have a maximum length of 256 characters. The permitted character set for the shortName includes all UTF-8 encoded Unicode characters except single quotes ('), double quotes ("), backslashes (\\), and forward slashes (/).
  final pulumi.Input<String> shortName;

  /// Creates a new [TagKeyArgs].
  /// [allowedValuesRegex] Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-assigned description of the TagKey. Must not exceed 256 characters.
  /// [parent] Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}.
  /// [purpose] Optional. A purpose cannot be changed once set.
  /// [purposeData] Optional. Purpose data cannot be changed once set.
  /// [shortName] Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.
  const TagKeyArgs({
    this.allowedValuesRegex,
    this.deletionPolicy,
    this.description,
    required this.parent,
    this.purpose,
    this.purposeData,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValuesRegex': ?allowedValuesRegex,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'parent': parent,
      'purpose': ?purpose,
      'purposeData': ?purposeData,
      'shortName': shortName,
    };
  }

  factory TagKeyArgs.fromMap(Map<String, dynamic> map) {
    return TagKeyArgs(
      allowedValuesRegex: (() { final guardedValue = map['allowedValuesRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purposeData: (() { final guardedValue = map['purposeData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
    );
  }
}
