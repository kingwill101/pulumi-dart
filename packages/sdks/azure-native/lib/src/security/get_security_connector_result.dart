// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSecurityConnector.
class GetSecurityConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The security connector environment data.
  final dynamic environmentData;
  /// The multi cloud resource's cloud name.
  final String? environmentName;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;
  /// The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  final String? hierarchyIdentifier;
  /// The date on which the trial period will end, if applicable. Trial period exists for 30 days after upgrading to payed offerings.
  final String? hierarchyIdentifierTrialEndDate;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of the resource
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// A collection of offerings for the security connector.
  final List<dynamic>? offerings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSecurityConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [environmentData] The security connector environment data.
  /// [environmentName] The multi cloud resource's cloud name.
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [hierarchyIdentifier] The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  /// [hierarchyIdentifierTrialEndDate] The date on which the trial period will end, if applicable. Trial period exists for 30 days after upgrading to payed offerings.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of the resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [offerings] A collection of offerings for the security connector.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecurityConnectorResult({
    this.azureApiVersion,
    this.environmentData,
    this.environmentName,
    this.etag,
    this.hierarchyIdentifier,
    this.hierarchyIdentifierTrialEndDate,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.offerings,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'environmentData': ?environmentData,
      'environmentName': ?environmentName,
      'etag': ?etag,
      'hierarchyIdentifier': ?hierarchyIdentifier,
      'hierarchyIdentifierTrialEndDate': ?hierarchyIdentifierTrialEndDate,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'offerings': ?offerings,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSecurityConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentData: (() { final guardedValue = map['environmentData']; if (guardedValue == null) return null; return guardedValue; })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hierarchyIdentifier: (() { final guardedValue = map['hierarchyIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hierarchyIdentifierTrialEndDate: (() { final guardedValue = map['hierarchyIdentifierTrialEndDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerings: (() { final guardedValue = map['offerings']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
