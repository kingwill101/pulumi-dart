import 'package:pulumi/pulumi.dart' as pulumi;
import 'org_template_collection_args.dart';

/// Creates a new template collection (source) for an organization. Template collections define where project templates are sourced from, such as a Git repository. Organization members can use these templates to create new stacks with pre-configured infrastructure code.
class OrgTemplateCollection extends pulumi.CustomResource {
  /// Deprecated - use destinationURL instead.
  late final pulumi.Output<dynamic> destination;
  /// The destination URL for the template source.
  late final pulumi.Output<String?> destinationURL;
  /// An error message if the template source is invalid. Omitted or empty when the source is valid.
  late final pulumi.Output<String?> error;
  /// Whether the template source configuration is valid.
  late final pulumi.Output<bool> isValid;
  /// The human-readable name for this template source.
  late final pulumi.Output<String> name;
  /// The source URL to fetch templates from.
  late final pulumi.Output<String> sourceURL;
  /// The unique identifier of the template source.
  late final pulumi.Output<String> templateID;

  /// Creates a new [OrgTemplateCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrgTemplateCollection]. {@macro pulumi_api_org_template_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrgTemplateCollection(
    String name, {
    OrgTemplateCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:OrgTemplateCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destination = registerOutput<dynamic>('destination');
    destinationURL = registerOutput<String?>('destinationURL');
    error = registerOutput<String?>('error');
    isValid = registerOutput<bool>('isValid');
    this.name = registerOutput<String>('name');
    sourceURL = registerOutput<String>('sourceURL');
    templateID = registerOutput<String>('templateID');
  }
}
