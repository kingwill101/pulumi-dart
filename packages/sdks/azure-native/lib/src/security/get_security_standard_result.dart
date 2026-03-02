// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partial_assessment_properties_response.dart';
import 'standard_metadata_response.dart';

/// Result data returned by getSecurityStandard.
class GetSecurityStandardResult {
  /// List of assessment keys to apply to standard scope.
  final List<PartialAssessmentPropertiesResponse>? assessments;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of all standard supported clouds.
  final List<String>? cloudProviders;
  /// Description of the standard
  final String? description;
  /// Display name of the standard, equivalent to the standardId
  final String? displayName;
  /// Resource Id
  final String id;
  /// The security standard metadata.
  final StandardMetadataResponse? metadata;
  /// Resource name
  final String name;
  /// The policy set definition id associated with the standard.
  final String? policySetDefinitionId;
  /// Standard type (Custom or Default or Compliance only currently)
  final String standardType;
  /// Resource type
  final String type;

  /// Creates a new [GetSecurityStandardResult].
  /// [assessments] List of assessment keys to apply to standard scope.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudProviders] List of all standard supported clouds.
  /// [description] Description of the standard
  /// [displayName] Display name of the standard, equivalent to the standardId
  /// [id] Resource Id
  /// [metadata] The security standard metadata.
  /// [name] Resource name
  /// [policySetDefinitionId] The policy set definition id associated with the standard.
  /// [standardType] Standard type (Custom or Default or Compliance only currently)
  /// [type] Resource type
  GetSecurityStandardResult({
    this.assessments,
    required this.azureApiVersion,
    this.cloudProviders,
    this.description,
    this.displayName,
    required this.id,
    this.metadata,
    required this.name,
    this.policySetDefinitionId,
    required this.standardType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessments': ?assessments == null ? null : pulumi.Input.encodeList<PartialAssessmentPropertiesResponse, Map<String, dynamic>>(assessments!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'cloudProviders': ?cloudProviders,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': name,
      'policySetDefinitionId': ?policySetDefinitionId,
      'standardType': standardType,
      'type': type,
    };
  }

  factory GetSecurityStandardResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityStandardResult(
      assessments: map['assessments'] == null ? null : pulumi.Input.decodeList<PartialAssessmentPropertiesResponse>(map['assessments']!, (value) => PartialAssessmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      cloudProviders: map['cloudProviders'] == null ? null : (map['cloudProviders']! as List).cast<String>(),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : StandardMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      policySetDefinitionId: map['policySetDefinitionId'] == null ? null : map['policySetDefinitionId']! as String,
      standardType: map['standardType'] as String,
      type: map['type'] as String,
    );
  }
}

