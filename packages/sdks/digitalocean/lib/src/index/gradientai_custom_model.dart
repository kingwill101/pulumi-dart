import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_custom_model_args.dart';
import 'gradientai_custom_model_source_ref.dart';
import 'gradientai_custom_model_state.dart';

class GradientaiCustomModel extends pulumi.CustomResource {
  /// Whether the caller accepts the model provider's terms and conditions. Write-only.
  late final pulumi.Output<bool?> acceptTermsAndConditions;
  /// Active dedicated inference deployments referencing this custom model.
  late final pulumi.Output<List<Map<String, dynamic>>> activeDeployments;
  /// Model architecture as reported by the importer.
  late final pulumi.Output<String> architecture;
  /// Maximum context length supported by the model.
  late final pulumi.Output<int> contextLength;
  /// Estimated monthly cost of running the custom model.
  late final pulumi.Output<int> costEstimatePerMonth;
  /// Timestamp when the custom model was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the custom model.
  late final pulumi.Output<String?> description;
  /// Error message if the custom model import failed.
  late final pulumi.Output<String> errorMessage;
  /// Number of files that make up the imported model.
  late final pulumi.Output<int> fileCount;
  /// Input modalities supported by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  late final pulumi.Output<List<String>> inputModalities;
  /// License of the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  late final pulumi.Output<String> license;
  /// A human-readable name for the custom model.
  late final pulumi.Output<String> name;
  /// Output modalities produced by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  late final pulumi.Output<List<String>> outputModalities;
  /// Parameter-count summary for the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  late final pulumi.Output<String> parameters;
  /// Preferred GPU region where the model artifacts should be staged.
  late final pulumi.Output<String?> preferredGpuRegion;
  /// Reference to the source from which to import the custom model.
  late final pulumi.Output<GradientaiCustomModelSourceRef> sourceRef;
  /// Source of the model to import. One of SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET, SOURCE_TYPE_SDK_UPLOAD, SOURCE_TYPE_FINE_TUNING.
  late final pulumi.Output<String> sourceType;
  /// Current status of the custom model.
  late final pulumi.Output<String> status;
  /// Region where the custom model artifacts are stored.
  late final pulumi.Output<String> storageRegion;
  /// User-defined tags associated with the custom model.
  late final pulumi.Output<List<String>?> tags;
  /// ID of the team that owns the custom model.
  late final pulumi.Output<String> teamId;
  /// Total size of the imported model artifacts in bytes.
  late final pulumi.Output<String> totalSizeBytes;
  /// Timestamp when the custom model was last updated.
  late final pulumi.Output<String> updatedAt;
  /// UUID of the custom model.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GradientaiCustomModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiCustomModel]. {@macro pulumi_index_gradientai_custom_model_gradientai_custom_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiCustomModel(
    String name, {
    GradientaiCustomModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiCustomModel:GradientaiCustomModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptTermsAndConditions = registerOutput<bool?>('acceptTermsAndConditions');
    activeDeployments = registerOutput<List<Map<String, dynamic>>>('activeDeployments');
    architecture = registerOutput<String>('architecture');
    contextLength = registerOutput<int>('contextLength');
    costEstimatePerMonth = registerOutput<int>('costEstimatePerMonth');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    fileCount = registerOutput<int>('fileCount');
    inputModalities = registerOutput<List<String>>('inputModalities');
    license = registerOutput<String>('license');
    this.name = registerOutput<String>('name');
    outputModalities = registerOutput<List<String>>('outputModalities');
    parameters = registerOutput<String>('parameters');
    preferredGpuRegion = registerOutput<String?>('preferredGpuRegion');
    sourceRef = registerOutput<GradientaiCustomModelSourceRef>('sourceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GradientaiCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    storageRegion = registerOutput<String>('storageRegion');
    tags = registerOutput<List<String>?>('tags');
    teamId = registerOutput<String>('teamId');
    totalSizeBytes = registerOutput<String>('totalSizeBytes');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [GradientaiCustomModel] resource's state with the given [name] and [id].
  static GradientaiCustomModel get(
    String name,
    pulumi.Input<String> id, {
    GradientaiCustomModelState? state,
  }) {
    return GradientaiCustomModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GradientaiCustomModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiCustomModel:GradientaiCustomModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptTermsAndConditions = registerOutput<bool?>('acceptTermsAndConditions');
    activeDeployments = registerOutput<List<Map<String, dynamic>>>('activeDeployments');
    architecture = registerOutput<String>('architecture');
    contextLength = registerOutput<int>('contextLength');
    costEstimatePerMonth = registerOutput<int>('costEstimatePerMonth');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    fileCount = registerOutput<int>('fileCount');
    inputModalities = registerOutput<List<String>>('inputModalities');
    license = registerOutput<String>('license');
    this.name = registerOutput<String>('name');
    outputModalities = registerOutput<List<String>>('outputModalities');
    parameters = registerOutput<String>('parameters');
    preferredGpuRegion = registerOutput<String?>('preferredGpuRegion');
    sourceRef = registerOutput<GradientaiCustomModelSourceRef>('sourceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GradientaiCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    storageRegion = registerOutput<String>('storageRegion');
    tags = registerOutput<List<String>?>('tags');
    teamId = registerOutput<String>('teamId');
    totalSizeBytes = registerOutput<String>('totalSizeBytes');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }
}
