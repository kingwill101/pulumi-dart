// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'wsfc_domain_profile_response.dart';

/// Result data returned by getSqlVirtualMachineGroup.
class GetSqlVirtualMachineGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Cluster type.
  final String clusterConfiguration;
  /// Type of cluster manager: Windows Server Failover Cluster (WSFC), implied by the scale type of the group and the OS type.
  final String clusterManagerType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state to track the async operation status.
  final String provisioningState;
  /// Scale type.
  final String scaleType;
  /// SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  final String? sqlImageOffer;
  /// SQL image sku.
  final String? sqlImageSku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Cluster Active Directory domain profile.
  final WsfcDomainProfileResponse? wsfcDomainProfile;

  /// Creates a new [GetSqlVirtualMachineGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterConfiguration] Cluster type.
  /// [clusterManagerType] Type of cluster manager: Windows Server Failover Cluster (WSFC), implied by the scale type of the group and the OS type.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state to track the async operation status.
  /// [scaleType] Scale type.
  /// [sqlImageOffer] SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  /// [sqlImageSku] SQL image sku.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wsfcDomainProfile] Cluster Active Directory domain profile.
  GetSqlVirtualMachineGroupResult({
    required this.azureApiVersion,
    required this.clusterConfiguration,
    required this.clusterManagerType,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.scaleType,
    this.sqlImageOffer,
    this.sqlImageSku,
    required this.systemData,
    this.tags,
    required this.type,
    this.wsfcDomainProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterConfiguration': clusterConfiguration,
      'clusterManagerType': clusterManagerType,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'scaleType': scaleType,
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wsfcDomainProfile': ?wsfcDomainProfile == null ? null : wsfcDomainProfile!.toMap(),
    };
  }

  factory GetSqlVirtualMachineGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSqlVirtualMachineGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterConfiguration: map['clusterConfiguration'] as String,
      clusterManagerType: map['clusterManagerType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scaleType: map['scaleType'] as String,
      sqlImageOffer: map['sqlImageOffer'] == null ? null : map['sqlImageOffer']! as String,
      sqlImageSku: map['sqlImageSku'] == null ? null : map['sqlImageSku']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      wsfcDomainProfile: map['wsfcDomainProfile'] == null ? null : WsfcDomainProfileResponse.fromMap((map['wsfcDomainProfile']! as Map).cast<String, dynamic>()),
    );
  }
}

