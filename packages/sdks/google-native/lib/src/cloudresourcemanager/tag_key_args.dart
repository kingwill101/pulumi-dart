// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_key_purpose.dart';

/// {@template pulumi_cloudresourcemanager_v3_tag_key_args_doc}
/// The set of arguments for TagKey.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_tag_key_args_doc}
class TagKeyArgs {
  /// Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  final pulumi.Input<String>? description;
  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  final pulumi.Input<String>? etag;
  /// Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  final pulumi.Input<String>? name;
  /// Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  final pulumi.Input<String>? parent;
  /// Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  final pulumi.Input<TagKeyPurpose>? purpose;
  /// Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  final pulumi.Input<Map<String, String>>? purposeData;
  /// Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<String> shortName;

  /// Creates a new [TagKeyArgs].
  /// [description] Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  /// [etag] Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  /// [name] Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  /// [parent] Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  /// [purpose] Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  /// [purposeData] Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  /// [shortName] Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  TagKeyArgs({
    this.description,
    this.etag,
    this.name,
    this.parent,
    this.purpose,
    this.purposeData,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'purpose': ?pulumi.Input.mapOptionalInputValue<TagKeyPurpose, String>(purpose, (value) => value.value),
      'purposeData': ?purposeData,
      'shortName': shortName,
    };
  }

  factory TagKeyArgs.fromMap(Map<String, dynamic> map) {
    return TagKeyArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      purpose: map['purpose'] == null ? null : (TagKeyPurpose.fromValue(map['purpose'] as String)).input(),
      purposeData: map['purposeData'] == null ? null : ((map['purposeData'] as Map).cast<String, String>()).input(),
      shortName: (map['shortName'] as String).input(),
    );
  }
}

