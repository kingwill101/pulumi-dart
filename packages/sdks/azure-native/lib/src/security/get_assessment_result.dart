// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_links_response.dart';
import 'assessment_status_response_response.dart';
import 'security_assessment_metadata_properties_response.dart';
import 'security_assessment_partner_data_response.dart';

/// Result data returned by getAssessment.
class GetAssessmentResult {
  /// Additional data regarding the assessment
  final Map<String, String>? additionalData;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// User friendly display name of the assessment
  final String? displayName;
  /// Resource Id
  final String? id;
  /// Links relevant to the assessment
  final AssessmentLinksResponse? links;
  /// Describes properties of an assessment metadata.
  final SecurityAssessmentMetadataPropertiesResponse? metadata;
  /// Resource name
  final String? name;
  /// Data regarding 3rd party partner integration
  final SecurityAssessmentPartnerDataResponse? partnersData;
  /// Details of the resource that was assessed
  final dynamic resourceDetails;
  /// The result of the assessment
  final AssessmentStatusResponseResponse? status;
  /// Resource type
  final String? type;

  /// Creates a new [GetAssessmentResult].
  /// [additionalData] Additional data regarding the assessment
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] User friendly display name of the assessment
  /// [id] Resource Id
  /// [links] Links relevant to the assessment
  /// [metadata] Describes properties of an assessment metadata.
  /// [name] Resource name
  /// [partnersData] Data regarding 3rd party partner integration
  /// [resourceDetails] Details of the resource that was assessed
  /// [status] The result of the assessment
  /// [type] Resource type
  const GetAssessmentResult({
    this.additionalData,
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.links,
    this.metadata,
    this.name,
    this.partnersData,
    this.resourceDetails,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'links': ?links?.toMap(),
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'partnersData': ?partnersData?.toMap(),
      'resourceDetails': ?resourceDetails,
      'status': ?status?.toMap(),
      'type': ?type,
    };
  }

  factory GetAssessmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentResult(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return AssessmentLinksResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return SecurityAssessmentMetadataPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnersData: (() { final guardedValue = map['partnersData']; if (guardedValue == null) return null; return SecurityAssessmentPartnerDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceDetails: (() { final guardedValue = map['resourceDetails']; if (guardedValue == null) return null; return guardedValue; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return AssessmentStatusResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
