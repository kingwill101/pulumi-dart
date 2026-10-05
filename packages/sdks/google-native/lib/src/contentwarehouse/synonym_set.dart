import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym_response.dart';
import 'synonym_set_args.dart';

/// Creates a SynonymSet for a single context. Throws an ALREADY_EXISTS exception if a synonymset already exists for the context.
class SynonymSet extends pulumi.CustomResource {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  late final pulumi.Output<String> context;
  late final pulumi.Output<String> location;
  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// List of Synonyms for the context.
  late final pulumi.Output<List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>> synonyms;

  /// Creates a new [SynonymSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynonymSet]. {@macro pulumi_contentwarehouse_v1_synonym_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynonymSet(
    String name, {
    SynonymSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:SynonymSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    context = registerOutput<String>('context');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    synonyms = registerOutput<List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>>('synonyms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SynonymSet] resource.
  SynonymSet.reference(String urn)
    : super(
        'google-native:contentwarehouse/v1:SynonymSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    context = registerOutput<String>('context');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    synonyms = registerOutput<List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>>('synonyms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
