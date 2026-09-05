// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_additional_location.dart';
import 'get_service_hostname_configuration.dart';
import 'get_service_identity.dart';
import 'get_service_tenant_access.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Zero or more `additionalLocation` blocks as defined below
  final List<GetServiceAdditionalLocation>? additionalLocations;
  /// The URL for the Developer Portal associated with this API Management service.
  final String? developerPortalUrl;
  /// Gateway URL of the API Management service in the Region.
  final String? gatewayRegionalUrl;
  /// The URL for the API Management Service's Gateway.
  final String? gatewayUrl;
  /// A `hostnameConfiguration` block as defined below.
  final List<GetServiceHostnameConfiguration>? hostnameConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetServiceIdentity>? identities;
  /// The location name of the additional region among Azure Data center regions.
  final String? location;
  /// The URL for the Management API.
  final String? managementApiUrl;
  final String? name;
  /// The email address from which the notification will be sent.
  final String? notificationSenderEmail;
  /// The URL of the Publisher Portal.
  final String? portalUrl;
  /// Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  final List<String>? privateIpAddresses;
  /// ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  final String? publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final List<String>? publicIpAddresses;
  /// The email of Publisher/Company of the API Management Service.
  final String? publisherEmail;
  /// The name of the Publisher/Company of the API Management Service.
  final String? publisherName;
  final String? resourceGroupName;
  /// The SCM (Source Code Management) endpoint.
  final String? scmUrl;
  /// The SKU of the API Management Service consisting of the name and capacity, separated by an underscore.
  final String? skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A `tenantAccess` block as defined below.
  final List<GetServiceTenantAccess>? tenantAccesses;

  /// Creates a new [GetServiceResult].
  /// [additionalLocations] Zero or more `additionalLocation` blocks as defined below
  /// [developerPortalUrl] The URL for the Developer Portal associated with this API Management service.
  /// [gatewayRegionalUrl] Gateway URL of the API Management service in the Region.
  /// [gatewayUrl] The URL for the API Management Service's Gateway.
  /// [hostnameConfigurations] A `hostnameConfiguration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location name of the additional region among Azure Data center regions.
  /// [managementApiUrl] The URL for the Management API.
  /// [name] Optional.
  /// [notificationSenderEmail] The email address from which the notification will be sent.
  /// [portalUrl] The URL of the Publisher Portal.
  /// [privateIpAddresses] Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  /// [publicIpAddressId] ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [publisherEmail] The email of Publisher/Company of the API Management Service.
  /// [publisherName] The name of the Publisher/Company of the API Management Service.
  /// [resourceGroupName] Optional.
  /// [scmUrl] The SCM (Source Code Management) endpoint.
  /// [skuName] The SKU of the API Management Service consisting of the name and capacity, separated by an underscore.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantAccesses] A `tenantAccess` block as defined below.
  const GetServiceResult({
    this.additionalLocations,
    this.developerPortalUrl,
    this.gatewayRegionalUrl,
    this.gatewayUrl,
    this.hostnameConfigurations,
    this.id,
    this.identities,
    this.location,
    this.managementApiUrl,
    this.name,
    this.notificationSenderEmail,
    this.portalUrl,
    this.privateIpAddresses,
    this.publicIpAddressId,
    this.publicIpAddresses,
    this.publisherEmail,
    this.publisherName,
    this.resourceGroupName,
    this.scmUrl,
    this.skuName,
    this.tags,
    this.tenantAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?(() { final guardedValue = additionalLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAdditionalLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'developerPortalUrl': ?developerPortalUrl,
      'gatewayRegionalUrl': ?gatewayRegionalUrl,
      'gatewayUrl': ?gatewayUrl,
      'hostnameConfigurations': ?(() { final guardedValue = hostnameConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceHostnameConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'managementApiUrl': ?managementApiUrl,
      'name': ?name,
      'notificationSenderEmail': ?notificationSenderEmail,
      'portalUrl': ?portalUrl,
      'privateIpAddresses': ?privateIpAddresses,
      'publicIpAddressId': ?publicIpAddressId,
      'publicIpAddresses': ?publicIpAddresses,
      'publisherEmail': ?publisherEmail,
      'publisherName': ?publisherName,
      'resourceGroupName': ?resourceGroupName,
      'scmUrl': ?scmUrl,
      'skuName': ?skuName,
      'tags': ?tags,
      'tenantAccesses': ?(() { final guardedValue = tenantAccesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTenantAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      additionalLocations: (() { final guardedValue = map['additionalLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAdditionalLocation>(guardedValue, (value) => GetServiceAdditionalLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      developerPortalUrl: (() { final guardedValue = map['developerPortalUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayRegionalUrl: (() { final guardedValue = map['gatewayRegionalUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayUrl: (() { final guardedValue = map['gatewayUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostnameConfigurations: (() { final guardedValue = map['hostnameConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceHostnameConfiguration>(guardedValue, (value) => GetServiceHostnameConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceIdentity>(guardedValue, (value) => GetServiceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementApiUrl: (() { final guardedValue = map['managementApiUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationSenderEmail: (() { final guardedValue = map['notificationSenderEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalUrl: (() { final guardedValue = map['portalUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publisherEmail: (() { final guardedValue = map['publisherEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisherName: (() { final guardedValue = map['publisherName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scmUrl: (() { final guardedValue = map['scmUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantAccesses: (() { final guardedValue = map['tenantAccesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTenantAccess>(guardedValue, (value) => GetServiceTenantAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
