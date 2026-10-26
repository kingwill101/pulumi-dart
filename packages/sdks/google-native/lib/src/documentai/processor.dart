import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_processor_version_alias_response.dart';
import 'processor_args.dart';

/// Creates a processor from the ProcessorType provided. The processor will be at `ENABLED` state by default after its creation.
/// Auto-naming is currently not supported for this resource.
class Processor extends pulumi.CustomResource {
  /// The time the processor was created.
  late final pulumi.Output<String> createTime;
  /// The default processor version.
  late final pulumi.Output<String> defaultProcessorVersion;
  /// The display name of the processor.
  late final pulumi.Output<String> displayName;
  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  late final pulumi.Output<String> kmsKeyName;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  late final pulumi.Output<String> name;
  /// Immutable. The http endpoint that can be called to invoke processing.
  late final pulumi.Output<String> processEndpoint;
  /// The processor version aliases.
  late final pulumi.Output<List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>> processorVersionAliases;
  late final pulumi.Output<String> project;
  /// The state of the processor.
  late final pulumi.Output<String> state;
  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  late final pulumi.Output<String> type;

  /// Creates a new [Processor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Processor]. {@macro pulumi_documentai_v1_processor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Processor(
    String name, {
    ProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:documentai/v1:Processor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    defaultProcessorVersion = registerOutput<String>('defaultProcessorVersion');
    displayName = registerOutput<String>('displayName');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    processEndpoint = registerOutput<String>('processEndpoint');
    processorVersionAliases = registerOutput<List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>>('processorVersionAliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>(guardedValue, (value) => GoogleCloudDocumentaiV1ProcessorVersionAliasResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Processor] resource.
  Processor.reference(String urn)
    : super(
        'google-native:documentai/v1:Processor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    defaultProcessorVersion = registerOutput<String>('defaultProcessorVersion');
    displayName = registerOutput<String>('displayName');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    processEndpoint = registerOutput<String>('processEndpoint');
    processorVersionAliases = registerOutput<List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>>('processorVersionAliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>(guardedValue, (value) => GoogleCloudDocumentaiV1ProcessorVersionAliasResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
