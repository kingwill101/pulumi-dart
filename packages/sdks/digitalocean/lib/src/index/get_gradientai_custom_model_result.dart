// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_custom_model_active_deployment.dart';
import 'get_gradientai_custom_model_source_ref.dart';

/// Result data returned by getGradientaiCustomModel.
class GetGradientaiCustomModelResult {
  final List<GetGradientaiCustomModelActiveDeployment> activeDeployments;
  final String architecture;
  final int contextLength;
  final int costEstimatePerMonth;
  final String createdAt;
  final String description;
  final String errorMessage;
  final int fileCount;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> inputModalities;
  final String license;
  final String name;
  final List<String> outputModalities;
  final String parameters;
  final List<GetGradientaiCustomModelSourceRef> sourceReves;
  final String sourceType;
  final String status;
  final String storageRegion;
  final List<String> tags;
  final String teamId;
  final String totalSizeBytes;
  final String updatedAt;
  final String uuid;

  /// Creates a new [GetGradientaiCustomModelResult].
  /// [activeDeployments] Required.
  /// [architecture] Required.
  /// [contextLength] Required.
  /// [costEstimatePerMonth] Required.
  /// [createdAt] Required.
  /// [description] Required.
  /// [errorMessage] Required.
  /// [fileCount] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inputModalities] Required.
  /// [license] Required.
  /// [name] Required.
  /// [outputModalities] Required.
  /// [parameters] Required.
  /// [sourceReves] Required.
  /// [sourceType] Required.
  /// [status] Required.
  /// [storageRegion] Required.
  /// [tags] Required.
  /// [teamId] Required.
  /// [totalSizeBytes] Required.
  /// [updatedAt] Required.
  /// [uuid] Required.
  const GetGradientaiCustomModelResult({
    required this.activeDeployments,
    required this.architecture,
    required this.contextLength,
    required this.costEstimatePerMonth,
    required this.createdAt,
    required this.description,
    required this.errorMessage,
    required this.fileCount,
    required this.id,
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
      'activeDeployments': pulumi.Input.encodeList<GetGradientaiCustomModelActiveDeployment, Map<String, dynamic>>(activeDeployments, (value) => value.toMap()),
      'architecture': architecture,
      'contextLength': contextLength,
      'costEstimatePerMonth': costEstimatePerMonth,
      'createdAt': createdAt,
      'description': description,
      'errorMessage': errorMessage,
      'fileCount': fileCount,
      'id': id,
      'inputModalities': inputModalities,
      'license': license,
      'name': name,
      'outputModalities': outputModalities,
      'parameters': parameters,
      'sourceReves': pulumi.Input.encodeList<GetGradientaiCustomModelSourceRef, Map<String, dynamic>>(sourceReves, (value) => value.toMap()),
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

  factory GetGradientaiCustomModelResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelResult(
      activeDeployments: pulumi.Input.decodeList<GetGradientaiCustomModelActiveDeployment>(map['activeDeployments']!, (value) => GetGradientaiCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>())),
      architecture: map['architecture'] as String,
      contextLength: map['contextLength'] as int,
      costEstimatePerMonth: map['costEstimatePerMonth'] as int,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      fileCount: map['fileCount'] as int,
      id: map['id'] as String,
      inputModalities: (map['inputModalities'] as List).cast<String>(),
      license: map['license'] as String,
      name: map['name'] as String,
      outputModalities: (map['outputModalities'] as List).cast<String>(),
      parameters: map['parameters'] as String,
      sourceReves: pulumi.Input.decodeList<GetGradientaiCustomModelSourceRef>(map['sourceReves']!, (value) => GetGradientaiCustomModelSourceRef.fromMap((value as Map).cast<String, dynamic>())),
      sourceType: map['sourceType'] as String,
      status: map['status'] as String,
      storageRegion: map['storageRegion'] as String,
      tags: (map['tags'] as List).cast<String>(),
      teamId: map['teamId'] as String,
      totalSizeBytes: map['totalSizeBytes'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
