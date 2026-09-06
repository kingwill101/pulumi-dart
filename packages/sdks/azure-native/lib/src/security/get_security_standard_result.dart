// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partial_assessment_properties_response.dart';
import 'standard_metadata_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityStandard.
class GetSecurityStandardResult {
  /// List of assessment keys to apply to standard scope.
  final List<PartialAssessmentPropertiesResponse>? assessments;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of all standard supported clouds.
  final List<String>? cloudProviders;
  /// Description of the standard
  final String? description;
  /// Display name of the standard, equivalent to the standardId
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The security standard metadata.
  final StandardMetadataResponse? metadata;
  /// The name of the resource
  final String? name;
  /// The policy set definition id associated with the standard.
  final String? policySetDefinitionId;
  /// Standard type (Custom or Default or Compliance only currently)
  final String? standardType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSecurityStandardResult].
  /// [assessments] List of assessment keys to apply to standard scope.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudProviders] List of all standard supported clouds.
  /// [description] Description of the standard
  /// [displayName] Display name of the standard, equivalent to the standardId
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [metadata] The security standard metadata.
  /// [name] The name of the resource
  /// [policySetDefinitionId] The policy set definition id associated with the standard.
  /// [standardType] Standard type (Custom or Default or Compliance only currently)
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecurityStandardResult({
    this.assessments,
    this.azureApiVersion,
    this.cloudProviders,
    this.description,
    this.displayName,
    this.id,
    this.metadata,
    this.name,
    this.policySetDefinitionId,
    this.standardType,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessments': ?(() { final guardedValue = assessments; if (guardedValue == null) return null; return pulumi.Input.encodeList<PartialAssessmentPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'cloudProviders': ?cloudProviders,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'policySetDefinitionId': ?policySetDefinitionId,
      'standardType': ?standardType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSecurityStandardResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityStandardResult(
      assessments: (() { final guardedValue = map['assessments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartialAssessmentPropertiesResponse>(guardedValue, (value) => PartialAssessmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudProviders: (() { final guardedValue = map['cloudProviders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return StandardMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policySetDefinitionId: (() { final guardedValue = map['policySetDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standardType: (() { final guardedValue = map['standardType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
