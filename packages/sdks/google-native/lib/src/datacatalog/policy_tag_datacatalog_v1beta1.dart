import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_tag_datacatalog_v1beta1_args.dart';

/// Creates a policy tag in the specified taxonomy.
/// Auto-naming is currently not supported for this resource.
class PolicyTagDatacatalogV1beta1 extends pulumi.CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final pulumi.Output<List<String>> childPolicyTags;

  /// Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  late final pulumi.Output<String> description;

  /// User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Resource name of this policy tag, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{id}".
  late final pulumi.Output<String> name;

  /// Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  late final pulumi.Output<String> parentPolicyTag;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> taxonomyId;

  /// Creates a new [PolicyTagDatacatalogV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyTagDatacatalogV1beta1]. {@macro pulumi_datacatalog_v1beta1_policy_tag_datacatalog_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyTagDatacatalogV1beta1(
    String name, {
    PolicyTagDatacatalogV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datacatalog/v1beta1:PolicyTag',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    childPolicyTags = registerOutput<List<String>>('childPolicyTags');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentPolicyTag = registerOutput<String>('parentPolicyTag');
    project = registerOutput<String>('project');
    taxonomyId = registerOutput<String>('taxonomyId');
  }
}
