// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_environment_data_response.dart';
import 'cspm_monitor_aws_offering_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityConnector.
class GetSecurityConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The security connector environment data.
  final AwsEnvironmentDataResponse? environmentData;
  /// The multi cloud resource's cloud name.
  final String? environmentName;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;
  /// The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  final String? hierarchyIdentifier;
  /// The date on which the trial period will end, if applicable. Trial period exists for 30 days after upgrading to payed offerings.
  final String hierarchyIdentifierTrialEndDate;
  /// Resource Id
  final String id;
  /// Kind of the resource
  final String? kind;
  /// Location where the resource is stored
  final String? location;
  /// Resource name
  final String name;
  /// A collection of offerings for the security connector.
  final List<CspmMonitorAwsOfferingResponse>? offerings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// A list of key value pairs that describe the resource.
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetSecurityConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [environmentData] The security connector environment data.
  /// [environmentName] The multi cloud resource's cloud name.
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [hierarchyIdentifier] The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  /// [hierarchyIdentifierTrialEndDate] The date on which the trial period will end, if applicable. Trial period exists for 30 days after upgrading to payed offerings.
  /// [id] Resource Id
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [name] Resource name
  /// [offerings] A collection of offerings for the security connector.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] A list of key value pairs that describe the resource.
  /// [type] Resource type
  GetSecurityConnectorResult({
    required this.azureApiVersion,
    this.environmentData,
    this.environmentName,
    this.etag,
    this.hierarchyIdentifier,
    required this.hierarchyIdentifierTrialEndDate,
    required this.id,
    this.kind,
    this.location,
    required this.name,
    this.offerings,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'environmentData': ?environmentData == null ? null : environmentData!.toMap(),
      'environmentName': ?environmentName,
      'etag': ?etag,
      'hierarchyIdentifier': ?hierarchyIdentifier,
      'hierarchyIdentifierTrialEndDate': hierarchyIdentifierTrialEndDate,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'offerings': ?offerings == null ? null : pulumi.Input.encodeList<CspmMonitorAwsOfferingResponse, Map<String, dynamic>>(offerings!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSecurityConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      environmentData: map['environmentData'] == null ? null : AwsEnvironmentDataResponse.fromMap((map['environmentData']! as Map).cast<String, dynamic>()),
      environmentName: map['environmentName'] == null ? null : map['environmentName']! as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      hierarchyIdentifier: map['hierarchyIdentifier'] == null ? null : map['hierarchyIdentifier']! as String,
      hierarchyIdentifierTrialEndDate: map['hierarchyIdentifierTrialEndDate'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      offerings: map['offerings'] == null ? null : pulumi.Input.decodeList<CspmMonitorAwsOfferingResponse>(map['offerings']!, (value) => CspmMonitorAwsOfferingResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

