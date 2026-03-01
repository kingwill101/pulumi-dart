// ignore_for_file: unused_element, unnecessary_cast

import 'assessment_links_response.dart';
import 'assessment_status_response_response.dart';
import 'azure_resource_details_response.dart';
import 'security_assessment_metadata_properties_response.dart';
import 'security_assessment_partner_data_response.dart';

/// Result data returned by getAssessment.
class GetAssessmentResult {
  /// Additional data regarding the assessment
  final Map<String, String>? additionalData;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// User friendly display name of the assessment
  final String displayName;
  /// Resource Id
  final String id;
  /// Links relevant to the assessment
  final AssessmentLinksResponse links;
  /// Describes properties of an assessment metadata.
  final SecurityAssessmentMetadataPropertiesResponse? metadata;
  /// Resource name
  final String name;
  /// Data regarding 3rd party partner integration
  final SecurityAssessmentPartnerDataResponse? partnersData;
  /// Details of the resource that was assessed
  final AzureResourceDetailsResponse resourceDetails;
  /// The result of the assessment
  final AssessmentStatusResponseResponse status;
  /// Resource type
  final String type;

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
  GetAssessmentResult({
    this.additionalData,
    required this.azureApiVersion,
    required this.displayName,
    required this.id,
    required this.links,
    this.metadata,
    required this.name,
    this.partnersData,
    required this.resourceDetails,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'azureApiVersion': azureApiVersion,
      'displayName': displayName,
      'id': id,
      'links': links.toMap(),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': name,
      'partnersData': ?partnersData == null ? null : partnersData!.toMap(),
      'resourceDetails': resourceDetails.toMap(),
      'status': status.toMap(),
      'type': type,
    };
  }

  factory GetAssessmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssessmentResult(
      additionalData: map['additionalData'] == null ? null : (map['additionalData'] as Map).cast<String, String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      links: AssessmentLinksResponse.fromMap((map['links'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null ? null : SecurityAssessmentMetadataPropertiesResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      partnersData: map['partnersData'] == null ? null : SecurityAssessmentPartnerDataResponse.fromMap((map['partnersData'] as Map).cast<String, dynamic>()),
      resourceDetails: AzureResourceDetailsResponse.fromMap((map['resourceDetails'] as Map).cast<String, dynamic>()),
      status: AssessmentStatusResponseResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

