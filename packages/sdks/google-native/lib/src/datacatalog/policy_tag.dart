import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_tag_args.dart';

/// Creates a policy tag in a taxonomy.
/// Auto-naming is currently not supported for this resource.
class PolicyTag extends pulumi.CustomResource {
  /// Resource names of child policy tags of this policy tag.
  late final pulumi.Output<List<String>> childPolicyTags;
  /// Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  late final pulumi.Output<String> description;
  /// User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;
  /// Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs and policy tag IDs.
  late final pulumi.Output<String> name;
  /// Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag, and, for "Geolocation", this field is empty.
  late final pulumi.Output<String> parentPolicyTag;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> taxonomyId;

  /// Creates a new [PolicyTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyTag]. {@macro pulumi_datacatalog_v1_policy_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyTag(
    String name, {
    PolicyTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:PolicyTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project', 'taxonomyId']).merge(options),
        ) {
    childPolicyTags = registerOutput<List<String>>('childPolicyTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentPolicyTag = registerOutput<String>('parentPolicyTag');
    project = registerOutput<String>('project');
    taxonomyId = registerOutput<String>('taxonomyId');
  }

  /// Creates a typed reference to an existing [PolicyTag] resource.
  PolicyTag.reference(String urn)
    : super(
        'google-native:datacatalog/v1:PolicyTag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    childPolicyTags = registerOutput<List<String>>('childPolicyTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parentPolicyTag = registerOutput<String>('parentPolicyTag');
    project = registerOutput<String>('project');
    taxonomyId = registerOutput<String>('taxonomyId');
  }
}
