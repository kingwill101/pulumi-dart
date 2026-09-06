// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'wsfc_domain_profile_response.dart';

/// Result data returned by getSqlVirtualMachineGroup.
class GetSqlVirtualMachineGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Cluster type.
  final String? clusterConfiguration;
  /// Type of cluster manager: Windows Server Failover Cluster (WSFC), implied by the scale type of the group and the OS type.
  final String? clusterManagerType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning state to track the async operation status.
  final String? provisioningState;
  /// Scale type.
  final String? scaleType;
  /// SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  final String? sqlImageOffer;
  /// SQL image sku.
  final String? sqlImageSku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetSqlVirtualMachineGroupResult({
    this.azureApiVersion,
    this.clusterConfiguration,
    this.clusterManagerType,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.scaleType,
    this.sqlImageOffer,
    this.sqlImageSku,
    this.systemData,
    this.tags,
    this.type,
    this.wsfcDomainProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clusterConfiguration': ?clusterConfiguration,
      'clusterManagerType': ?clusterManagerType,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'scaleType': ?scaleType,
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'wsfcDomainProfile': ?wsfcDomainProfile?.toMap(),
    };
  }

  factory GetSqlVirtualMachineGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSqlVirtualMachineGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterConfiguration: (() { final guardedValue = map['clusterConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterManagerType: (() { final guardedValue = map['clusterManagerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlImageOffer: (() { final guardedValue = map['sqlImageOffer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlImageSku: (() { final guardedValue = map['sqlImageSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wsfcDomainProfile: (() { final guardedValue = map['wsfcDomainProfile']; if (guardedValue == null) return null; return WsfcDomainProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
