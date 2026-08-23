// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_custom_model_active_deployment.dart';
import 'gradientai_custom_model_source_ref.dart';

/// Input properties used for looking up and filtering GradientaiCustomModel resources.
class GradientaiCustomModelState {
  /// Whether the caller accepts the model provider's terms and conditions. Write-only.
  final pulumi.Input<bool>? acceptTermsAndConditions;
  /// Active dedicated inference deployments referencing this custom model.
  final pulumi.Input<List<GradientaiCustomModelActiveDeployment>>? activeDeployments;
  /// Model architecture as reported by the importer.
  final pulumi.Input<String>? architecture;
  /// Maximum context length supported by the model.
  final pulumi.Input<int>? contextLength;
  /// Estimated monthly cost of running the custom model.
  final pulumi.Input<int>? costEstimatePerMonth;
  /// Timestamp when the custom model was created.
  final pulumi.Input<String>? createdAt;
  /// Description of the custom model.
  final pulumi.Input<String>? description;
  /// Error message if the custom model import failed.
  final pulumi.Input<String>? errorMessage;
  /// Number of files that make up the imported model.
  final pulumi.Input<int>? fileCount;
  /// Input modalities supported by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<List<String>>? inputModalities;
  /// License of the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<String>? license;
  /// A human-readable name for the custom model.
  final pulumi.Input<String>? name;
  /// Output modalities produced by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<List<String>>? outputModalities;
  /// Parameter-count summary for the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  final pulumi.Input<String>? parameters;
  /// Preferred GPU region where the model artifacts should be staged.
  final pulumi.Input<String>? preferredGpuRegion;
  /// Reference to the source from which to import the custom model.
  final pulumi.Input<GradientaiCustomModelSourceRef>? sourceRef;
  /// Source of the model to import. One of SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET, SOURCE_TYPE_SDK_UPLOAD, SOURCE_TYPE_FINE_TUNING.
  final pulumi.Input<String>? sourceType;
  /// Current status of the custom model.
  final pulumi.Input<String>? status;
  /// Region where the custom model artifacts are stored.
  final pulumi.Input<String>? storageRegion;
  /// User-defined tags associated with the custom model.
  final pulumi.Input<List<String>>? tags;
  /// ID of the team that owns the custom model.
  final pulumi.Input<String>? teamId;
  /// Total size of the imported model artifacts in bytes.
  final pulumi.Input<String>? totalSizeBytes;
  /// Timestamp when the custom model was last updated.
  final pulumi.Input<String>? updatedAt;
  /// UUID of the custom model.
  final pulumi.Input<String>? uuid;

  /// Creates a new [GradientaiCustomModelState].
  /// [acceptTermsAndConditions] Whether the caller accepts the model provider's terms and conditions. Write-only.
  /// [activeDeployments] Active dedicated inference deployments referencing this custom model.
  /// [architecture] Model architecture as reported by the importer.
  /// [contextLength] Maximum context length supported by the model.
  /// [costEstimatePerMonth] Estimated monthly cost of running the custom model.
  /// [createdAt] Timestamp when the custom model was created.
  /// [description] Description of the custom model.
  /// [errorMessage] Error message if the custom model import failed.
  /// [fileCount] Number of files that make up the imported model.
  /// [inputModalities] Input modalities supported by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [license] License of the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [name] A human-readable name for the custom model.
  /// [outputModalities] Output modalities produced by the model. Defaults to the values reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [parameters] Parameter-count summary for the model. Defaults to the value reported by the importer. Caller-supplied overrides are honored only for SOURCE_TYPE_SPACES_BUCKET imports.
  /// [preferredGpuRegion] Preferred GPU region where the model artifacts should be staged.
  /// [sourceRef] Reference to the source from which to import the custom model.
  /// [sourceType] Source of the model to import. One of SOURCE_TYPE_HUGGINGFACE, SOURCE_TYPE_SPACES_BUCKET, SOURCE_TYPE_SDK_UPLOAD, SOURCE_TYPE_FINE_TUNING.
  /// [status] Current status of the custom model.
  /// [storageRegion] Region where the custom model artifacts are stored.
  /// [tags] User-defined tags associated with the custom model.
  /// [teamId] ID of the team that owns the custom model.
  /// [totalSizeBytes] Total size of the imported model artifacts in bytes.
  /// [updatedAt] Timestamp when the custom model was last updated.
  /// [uuid] UUID of the custom model.
  const GradientaiCustomModelState({
    this.acceptTermsAndConditions,
    this.activeDeployments,
    this.architecture,
    this.contextLength,
    this.costEstimatePerMonth,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.fileCount,
    this.inputModalities,
    this.license,
    this.name,
    this.outputModalities,
    this.parameters,
    this.preferredGpuRegion,
    this.sourceRef,
    this.sourceType,
    this.status,
    this.storageRegion,
    this.tags,
    this.teamId,
    this.totalSizeBytes,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptTermsAndConditions': ?acceptTermsAndConditions,
      'activeDeployments': ?pulumi.Input.mapOptionalInputValue<List<GradientaiCustomModelActiveDeployment>, List<Map<String, dynamic>>>(activeDeployments, (value) => pulumi.Input.encodeList<GradientaiCustomModelActiveDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'architecture': ?architecture,
      'contextLength': ?contextLength,
      'costEstimatePerMonth': ?costEstimatePerMonth,
      'createdAt': ?createdAt,
      'description': ?description,
      'errorMessage': ?errorMessage,
      'fileCount': ?fileCount,
      'inputModalities': ?inputModalities,
      'license': ?license,
      'name': ?name,
      'outputModalities': ?outputModalities,
      'parameters': ?parameters,
      'preferredGpuRegion': ?preferredGpuRegion,
      'sourceRef': ?pulumi.Input.mapOptionalInputValue<GradientaiCustomModelSourceRef, Map<String, dynamic>>(sourceRef, (value) => value.toMap()),
      'sourceType': ?sourceType,
      'status': ?status,
      'storageRegion': ?storageRegion,
      'tags': ?tags,
      'teamId': ?teamId,
      'totalSizeBytes': ?totalSizeBytes,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GradientaiCustomModelState.fromMap(Map<String, dynamic> map) {
    return GradientaiCustomModelState(
      acceptTermsAndConditions: (() { final guardedValue = map['acceptTermsAndConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      activeDeployments: (() { final guardedValue = map['activeDeployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GradientaiCustomModelActiveDeployment>(guardedValue, (value) => GradientaiCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextLength: (() { final guardedValue = map['contextLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      costEstimatePerMonth: (() { final guardedValue = map['costEstimatePerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCount: (() { final guardedValue = map['fileCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inputModalities: (() { final guardedValue = map['inputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputModalities: (() { final guardedValue = map['outputModalities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredGpuRegion: (() { final guardedValue = map['preferredGpuRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRef: (() { final guardedValue = map['sourceRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GradientaiCustomModelSourceRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageRegion: (() { final guardedValue = map['storageRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalSizeBytes: (() { final guardedValue = map['totalSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
