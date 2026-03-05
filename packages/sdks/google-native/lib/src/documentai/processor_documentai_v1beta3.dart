import 'package:pulumi/pulumi.dart' as pulumi;
import 'processor_documentai_v1beta3_args.dart';

/// Creates a processor from the ProcessorType provided. The processor will be at `ENABLED` state by default after its creation.
/// Auto-naming is currently not supported for this resource.
class ProcessorDocumentaiV1beta3 extends pulumi.CustomResource {
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
  late final pulumi.Output<List<Map<String, dynamic>>> processorVersionAliases;
  late final pulumi.Output<String> project;
  /// The state of the processor.
  late final pulumi.Output<String> state;
  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  late final pulumi.Output<String> type;

  /// Creates a new [ProcessorDocumentaiV1beta3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProcessorDocumentaiV1beta3]. {@macro pulumi_documentai_v1beta3_processor_documentai_v1beta3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProcessorDocumentaiV1beta3(
    String name, {
    ProcessorDocumentaiV1beta3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:documentai/v1beta3:Processor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    defaultProcessorVersion = registerOutput<String>('defaultProcessorVersion');
    displayName = registerOutput<String>('displayName');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    processEndpoint = registerOutput<String>('processEndpoint');
    processorVersionAliases = registerOutput<List<Map<String, dynamic>>>('processorVersionAliases');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
