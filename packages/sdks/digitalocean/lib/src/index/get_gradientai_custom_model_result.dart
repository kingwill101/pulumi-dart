// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_custom_model_active_deployment.dart';
import 'get_gradientai_custom_model_source_ref.dart';

/// Result data returned by getGradientaiCustomModel.
class GetGradientaiCustomModelResult {
  final List<GetGradientaiCustomModelActiveDeployment>? activeDeployments;
  final String? architecture;
  final int? contextLength;
  final int? costEstimatePerMonth;
  final String? createdAt;
  final String? description;
  final String? errorMessage;
  final int? fileCount;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? inputModalities;
  final String? license;
  final String? name;
  final List<String>? outputModalities;
  final String? parameters;
  final List<GetGradientaiCustomModelSourceRef>? sourceReves;
  final String? sourceType;
  final String? status;
  final String? storageRegion;
  final List<String>? tags;
  final String? teamId;
  final String? totalSizeBytes;
  final String? updatedAt;
  final String? uuid;

  /// Creates a new [GetGradientaiCustomModelResult].
  /// [activeDeployments] Optional.
  /// [architecture] Optional.
  /// [contextLength] Optional.
  /// [costEstimatePerMonth] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [errorMessage] Optional.
  /// [fileCount] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inputModalities] Optional.
  /// [license] Optional.
  /// [name] Optional.
  /// [outputModalities] Optional.
  /// [parameters] Optional.
  /// [sourceReves] Optional.
  /// [sourceType] Optional.
  /// [status] Optional.
  /// [storageRegion] Optional.
  /// [tags] Optional.
  /// [teamId] Optional.
  /// [totalSizeBytes] Optional.
  /// [updatedAt] Optional.
  /// [uuid] Optional.
  const GetGradientaiCustomModelResult({
    this.activeDeployments,
    this.architecture,
    this.contextLength,
    this.costEstimatePerMonth,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.fileCount,
    this.id,
    this.inputModalities,
    this.license,
    this.name,
    this.outputModalities,
    this.parameters,
    this.sourceReves,
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
      'activeDeployments': ?(() { final guardedValue = activeDeployments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiCustomModelActiveDeployment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'architecture': ?architecture,
      'contextLength': ?contextLength,
      'costEstimatePerMonth': ?costEstimatePerMonth,
      'createdAt': ?createdAt,
      'description': ?description,
      'errorMessage': ?errorMessage,
      'fileCount': ?fileCount,
      'id': ?id,
      'inputModalities': ?inputModalities,
      'license': ?license,
      'name': ?name,
      'outputModalities': ?outputModalities,
      'parameters': ?parameters,
      'sourceReves': ?(() { final guardedValue = sourceReves; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiCustomModelSourceRef, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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

  factory GetGradientaiCustomModelResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelResult(
      activeDeployments: (() { final guardedValue = map['activeDeployments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiCustomModelActiveDeployment>(guardedValue, (value) => GetGradientaiCustomModelActiveDeployment.fromMap((value as Map).cast<String, dynamic>())); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contextLength: (() { final guardedValue = map['contextLength']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      costEstimatePerMonth: (() { final guardedValue = map['costEstimatePerMonth']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileCount: (() { final guardedValue = map['fileCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputModalities: (() { final guardedValue = map['inputModalities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputModalities: (() { final guardedValue = map['outputModalities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceReves: (() { final guardedValue = map['sourceReves']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiCustomModelSourceRef>(guardedValue, (value) => GetGradientaiCustomModelSourceRef.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageRegion: (() { final guardedValue = map['storageRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalSizeBytes: (() { final guardedValue = map['totalSizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
