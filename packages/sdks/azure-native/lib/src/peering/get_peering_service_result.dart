// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_workspace_properties_response.dart';
import 'peering_service_sku_response.dart';

/// Result data returned by getPeeringService.
class GetPeeringServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the resource.
  final String? id;
  /// The location of the resource.
  final String? location;
  /// The Log Analytics Workspace Properties
  final LogAnalyticsWorkspacePropertiesResponse? logAnalyticsWorkspaceProperties;
  /// The name of the resource.
  final String? name;
  /// The location (state/province) of the customer.
  final String? peeringServiceLocation;
  /// The name of the service provider.
  final String? peeringServiceProvider;
  /// The backup peering (Microsoft/service provider) location to be used for customer traffic.
  final String? providerBackupPeeringLocation;
  /// The primary peering (Microsoft/service provider) location to be used for customer traffic.
  final String? providerPrimaryPeeringLocation;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The SKU that defines the type of the peering service.
  final PeeringServiceSkuResponse? sku;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetPeeringServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the resource.
  /// [location] The location of the resource.
  /// [logAnalyticsWorkspaceProperties] The Log Analytics Workspace Properties
  /// [name] The name of the resource.
  /// [peeringServiceLocation] The location (state/province) of the customer.
  /// [peeringServiceProvider] The name of the service provider.
  /// [providerBackupPeeringLocation] The backup peering (Microsoft/service provider) location to be used for customer traffic.
  /// [providerPrimaryPeeringLocation] The primary peering (Microsoft/service provider) location to be used for customer traffic.
  /// [provisioningState] The provisioning state of the resource.
  /// [sku] The SKU that defines the type of the peering service.
  /// [tags] The resource tags.
  /// [type] The type of the resource.
  const GetPeeringServiceResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.logAnalyticsWorkspaceProperties,
    this.name,
    this.peeringServiceLocation,
    this.peeringServiceProvider,
    this.providerBackupPeeringLocation,
    this.providerPrimaryPeeringLocation,
    this.provisioningState,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'logAnalyticsWorkspaceProperties': ?logAnalyticsWorkspaceProperties?.toMap(),
      'name': ?name,
      'peeringServiceLocation': ?peeringServiceLocation,
      'peeringServiceProvider': ?peeringServiceProvider,
      'providerBackupPeeringLocation': ?providerBackupPeeringLocation,
      'providerPrimaryPeeringLocation': ?providerPrimaryPeeringLocation,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPeeringServiceResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsWorkspaceProperties: (() { final guardedValue = map['logAnalyticsWorkspaceProperties']; if (guardedValue == null) return null; return LogAnalyticsWorkspacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringServiceLocation: (() { final guardedValue = map['peeringServiceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringServiceProvider: (() { final guardedValue = map['peeringServiceProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerBackupPeeringLocation: (() { final guardedValue = map['providerBackupPeeringLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerPrimaryPeeringLocation: (() { final guardedValue = map['providerPrimaryPeeringLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return PeeringServiceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
