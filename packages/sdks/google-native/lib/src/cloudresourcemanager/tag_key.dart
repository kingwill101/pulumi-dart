import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_key_args.dart';

/// Creates a new TagKey. If another request with the same parameters is sent while the original request is in process, the second request will receive an error. A maximum of 1000 TagKeys can exist under a parent at any given time.
class TagKey extends pulumi.CustomResource {
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.
  late final pulumi.Output<String> description;
  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.
  late final pulumi.Output<String> etag;
  /// Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.
  late final pulumi.Output<String> name;
  /// Immutable. Namespaced name of the TagKey.
  late final pulumi.Output<String> namespacedName;
  /// Immutable. The resource name of the TagKey's parent. A TagKey can be parented by an Organization or a Project. For a TagKey parented by an Organization, its parent must be in the form `organizations/{org_id}`. For a TagKey parented by a Project, its parent can be in the form `projects/{project_id}` or `projects/{project_number}`.
  late final pulumi.Output<String> parent;
  /// Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
  late final pulumi.Output<String> purpose;
  /// Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.
  late final pulumi.Output<Map<String, String>> purposeData;
  /// Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<String> shortName;
  /// Update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TagKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagKey]. {@macro pulumi_cloudresourcemanager_v3_tag_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagKey(
    String name, {
    TagKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:TagKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.purpose = registerOutput<String>('purpose');
    this.purposeData = registerOutput<Map<String, String>>('purposeData');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
