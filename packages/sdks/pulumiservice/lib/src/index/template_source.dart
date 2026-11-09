import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_args.dart';
import 'template_source_destination.dart';

/// A source for Pulumi templates.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{templateSourceId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:TemplateSource my-template-source my-org/6f0d3b9e-2a75-4c18-9e46-b3a8c1d7e520
/// ```
///
/// The Pulumi Cloud console doesn't show the template source ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/orgs/my-org/templates/sources | jq '.sources[] | {name, id}'
/// ```
class TemplateSource extends pulumi.CustomResource {
  /// The default destination for projects using templates from this source.
  late final pulumi.Output<TemplateSourceDestination?> destination;
  /// Organization name.
  late final pulumi.Output<String> organizationName;
  /// Source name.
  late final pulumi.Output<String> sourceName;
  /// Github URL of the repository from which to grab templates.
  late final pulumi.Output<String> sourceURL;

  /// Creates a new [TemplateSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateSource]. {@macro pulumi_index_template_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateSource(
    String name, {
    TemplateSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TemplateSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['organizationName']).merge(options),
        ) {
    destination = registerOutput<TemplateSourceDestination?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateSourceDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organizationName = registerOutput<String>('organizationName');
    sourceName = registerOutput<String>('sourceName');
    sourceURL = registerOutput<String>('sourceURL');
  }

  /// Creates a typed reference to an existing [TemplateSource] resource.
  TemplateSource.reference(String urn)
    : super(
        'pulumiservice:index:TemplateSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    destination = registerOutput<TemplateSourceDestination?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TemplateSourceDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organizationName = registerOutput<String>('organizationName');
    sourceName = registerOutput<String>('sourceName');
    sourceURL = registerOutput<String>('sourceURL');
  }
}
