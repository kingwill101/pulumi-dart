import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_custom_model_active_deployment.dart';
import 'agent_platform_custom_model_args.dart';
import 'agent_platform_custom_model_source_ref.dart';
import 'agent_platform_custom_model_state.dart';

class AgentPlatformCustomModel extends pulumi.CustomResource {
  /// Whether the caller accepts the model provider's terms and conditions. Write-only.
  late final pulumi.Output<bool?> acceptTermsAndConditions;
  /// Active dedicated inference deployments referencing this custom model.
  late final pulumi.Output<List<AgentPlatformCustomModelActiveDeployment>> activeDeployments;
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
  late final pulumi.Output<AgentPlatformCustomModelSourceRef> sourceRef;
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

  /// Creates a new [AgentPlatformCustomModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformCustomModel]. {@macro pulumi_index_agent_platform_custom_model_agent_platform_custom_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformCustomModel(
    String name, {
    AgentPlatformCustomModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformCustomModel:AgentPlatformCustomModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    acceptTermsAndConditions = registerOutput<bool?>('acceptTermsAndConditions');
    activeDeployments = registerOutput<List<AgentPlatformCustomModelActiveDeployment>>('activeDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformCustomModelActiveDeployment>(guardedValue, (value) => AgentPlatformCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    architecture = registerOutput<String>('architecture');
    contextLength = registerOutput<int>('contextLength');
    costEstimatePerMonth = registerOutput<int>('costEstimatePerMonth');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    fileCount = registerOutput<int>('fileCount');
    inputModalities = registerOutput<List<String>>('inputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    license = registerOutput<String>('license');
    this.name = registerOutput<String>('name');
    outputModalities = registerOutput<List<String>>('outputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<String>('parameters');
    preferredGpuRegion = registerOutput<String?>('preferredGpuRegion');
    sourceRef = registerOutput<AgentPlatformCustomModelSourceRef>('sourceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    storageRegion = registerOutput<String>('storageRegion');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    teamId = registerOutput<String>('teamId');
    totalSizeBytes = registerOutput<String>('totalSizeBytes');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [AgentPlatformCustomModel] resource's state with the given [name] and [id].
  static AgentPlatformCustomModel get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformCustomModelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformCustomModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformCustomModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformCustomModel:AgentPlatformCustomModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptTermsAndConditions = registerOutput<bool?>('acceptTermsAndConditions');
    activeDeployments = registerOutput<List<AgentPlatformCustomModelActiveDeployment>>('activeDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformCustomModelActiveDeployment>(guardedValue, (value) => AgentPlatformCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    architecture = registerOutput<String>('architecture');
    contextLength = registerOutput<int>('contextLength');
    costEstimatePerMonth = registerOutput<int>('costEstimatePerMonth');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    fileCount = registerOutput<int>('fileCount');
    inputModalities = registerOutput<List<String>>('inputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    license = registerOutput<String>('license');
    this.name = registerOutput<String>('name');
    outputModalities = registerOutput<List<String>>('outputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<String>('parameters');
    preferredGpuRegion = registerOutput<String?>('preferredGpuRegion');
    sourceRef = registerOutput<AgentPlatformCustomModelSourceRef>('sourceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    storageRegion = registerOutput<String>('storageRegion');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    teamId = registerOutput<String>('teamId');
    totalSizeBytes = registerOutput<String>('totalSizeBytes');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [AgentPlatformCustomModel] resource.
  AgentPlatformCustomModel.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformCustomModel:AgentPlatformCustomModel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptTermsAndConditions = registerOutput<bool?>('acceptTermsAndConditions');
    activeDeployments = registerOutput<List<AgentPlatformCustomModelActiveDeployment>>('activeDeployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformCustomModelActiveDeployment>(guardedValue, (value) => AgentPlatformCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    architecture = registerOutput<String>('architecture');
    contextLength = registerOutput<int>('contextLength');
    costEstimatePerMonth = registerOutput<int>('costEstimatePerMonth');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    fileCount = registerOutput<int>('fileCount');
    inputModalities = registerOutput<List<String>>('inputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    license = registerOutput<String>('license');
    this.name = registerOutput<String>('name');
    outputModalities = registerOutput<List<String>>('outputModalities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parameters = registerOutput<String>('parameters');
    preferredGpuRegion = registerOutput<String?>('preferredGpuRegion');
    sourceRef = registerOutput<AgentPlatformCustomModelSourceRef>('sourceRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPlatformCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    storageRegion = registerOutput<String>('storageRegion');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    teamId = registerOutput<String>('teamId');
    totalSizeBytes = registerOutput<String>('totalSizeBytes');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }
}
