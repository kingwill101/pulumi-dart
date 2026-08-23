// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_custom_models_custom_model_active_deployment.dart';
import 'get_gradientai_custom_models_custom_model_source_ref.dart';

class GetGradientaiCustomModelsCustomModel {
  /// Active dedicated inference deployments referencing this custom model.
  final pulumi.Input<List<GetGradientaiCustomModelsCustomModelActiveDeployment>> activeDeployments;
  /// Model architecture as reported by the importer.
  final pulumi.Input<String> architecture;
  /// Maximum context length supported by the model.
  final pulumi.Input<int> contextLength;
  /// Estimated monthly cost of running the custom model.
  final pulumi.Input<int> costEstimatePerMonth;
  /// Timestamp when the custom model was created.
  final pulumi.Input<String> createdAt;
  /// Description of the custom model.
  final pulumi.Input<String> description;
  /// Error message if the custom model import failed.
  final pulumi.Input<String> errorMessage;
  /// Number of files that make up the imported model.
  final pulumi.Input<int> fileCount;
  /// Input modalities supported by the model (e.g. text, image).
  final pulumi.Input<List<String>> inputModalities;
  /// License of the custom model, as reported by the source.
  final pulumi.Input<String> license;
  /// Human-readable name of the custom model.
  final pulumi.Input<String> name;
  /// Output modalities produced by the model.
  final pulumi.Input<List<String>> outputModalities;
  /// Parameter-count summary reported by the importer.
  final pulumi.Input<String> parameters;
  /// Reference to the source from which the custom model was imported.
  final pulumi.Input<List<GetGradientaiCustomModelsCustomModelSourceRef>> sourceReves;
  /// Source type of the custom model (e.g. SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET).
  final pulumi.Input<String> sourceType;
  /// Current status of the custom model (e.g. STATUS_IMPORTING, STATUS_READY, STATUS_FAILED).
  final pulumi.Input<String> status;
  /// Region where the custom model artifacts are stored.
  final pulumi.Input<String> storageRegion;
  /// User-defined tags associated with the custom model.
  final pulumi.Input<List<String>> tags;
  /// ID of the team that owns the custom model.
  final pulumi.Input<String> teamId;
  /// Total size of the imported model artifacts in bytes (string-encoded int64).
  final pulumi.Input<String> totalSizeBytes;
  /// Timestamp when the custom model was last updated.
  final pulumi.Input<String> updatedAt;
  /// UUID of the custom model.
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiCustomModelsCustomModel].
  /// [activeDeployments] Active dedicated inference deployments referencing this custom model.
  /// [architecture] Model architecture as reported by the importer.
  /// [contextLength] Maximum context length supported by the model.
  /// [costEstimatePerMonth] Estimated monthly cost of running the custom model.
  /// [createdAt] Timestamp when the custom model was created.
  /// [description] Description of the custom model.
  /// [errorMessage] Error message if the custom model import failed.
  /// [fileCount] Number of files that make up the imported model.
  /// [inputModalities] Input modalities supported by the model (e.g. text, image).
  /// [license] License of the custom model, as reported by the source.
  /// [name] Human-readable name of the custom model.
  /// [outputModalities] Output modalities produced by the model.
  /// [parameters] Parameter-count summary reported by the importer.
  /// [sourceReves] Reference to the source from which the custom model was imported.
  /// [sourceType] Source type of the custom model (e.g. SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET).
  /// [status] Current status of the custom model (e.g. STATUS_IMPORTING, STATUS_READY, STATUS_FAILED).
  /// [storageRegion] Region where the custom model artifacts are stored.
  /// [tags] User-defined tags associated with the custom model.
  /// [teamId] ID of the team that owns the custom model.
  /// [totalSizeBytes] Total size of the imported model artifacts in bytes (string-encoded int64).
  /// [updatedAt] Timestamp when the custom model was last updated.
  /// [uuid] UUID of the custom model.
  const GetGradientaiCustomModelsCustomModel({
    required this.activeDeployments,
    required this.architecture,
    required this.contextLength,
    required this.costEstimatePerMonth,
    required this.createdAt,
    required this.description,
    required this.errorMessage,
    required this.fileCount,
    required this.inputModalities,
    required this.license,
    required this.name,
    required this.outputModalities,
    required this.parameters,
    required this.sourceReves,
    required this.sourceType,
    required this.status,
    required this.storageRegion,
    required this.tags,
    required this.teamId,
    required this.totalSizeBytes,
    required this.updatedAt,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeployments': pulumi.Input.mapInputValue<List<GetGradientaiCustomModelsCustomModelActiveDeployment>, List<Map<String, dynamic>>>(activeDeployments, (value) => pulumi.Input.encodeList<GetGradientaiCustomModelsCustomModelActiveDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'architecture': architecture,
      'contextLength': contextLength,
      'costEstimatePerMonth': costEstimatePerMonth,
      'createdAt': createdAt,
      'description': description,
      'errorMessage': errorMessage,
      'fileCount': fileCount,
      'inputModalities': inputModalities,
      'license': license,
      'name': name,
      'outputModalities': outputModalities,
      'parameters': parameters,
      'sourceReves': pulumi.Input.mapInputValue<List<GetGradientaiCustomModelsCustomModelSourceRef>, List<Map<String, dynamic>>>(sourceReves, (value) => pulumi.Input.encodeList<GetGradientaiCustomModelsCustomModelSourceRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceType': sourceType,
      'status': status,
      'storageRegion': storageRegion,
      'tags': tags,
      'teamId': teamId,
      'totalSizeBytes': totalSizeBytes,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGradientaiCustomModelsCustomModel.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelsCustomModel(
      activeDeployments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiCustomModelsCustomModelActiveDeployment>(map['activeDeployments']!, (value) => GetGradientaiCustomModelsCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      contextLength: pulumi.Input.fromValue(map['contextLength'] as int),
      costEstimatePerMonth: pulumi.Input.fromValue(map['costEstimatePerMonth'] as int),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      fileCount: pulumi.Input.fromValue(map['fileCount'] as int),
      inputModalities: pulumi.Input.fromValue((map['inputModalities'] as List).cast<String>()),
      license: pulumi.Input.fromValue(map['license'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputModalities: pulumi.Input.fromValue((map['outputModalities'] as List).cast<String>()),
      parameters: pulumi.Input.fromValue(map['parameters'] as String),
      sourceReves: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiCustomModelsCustomModelSourceRef>(map['sourceReves']!, (value) => GetGradientaiCustomModelsCustomModelSourceRef.fromMap((value as Map).cast<String, dynamic>()))),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageRegion: pulumi.Input.fromValue(map['storageRegion'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      teamId: pulumi.Input.fromValue(map['teamId'] as String),
      totalSizeBytes: pulumi.Input.fromValue(map['totalSizeBytes'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
