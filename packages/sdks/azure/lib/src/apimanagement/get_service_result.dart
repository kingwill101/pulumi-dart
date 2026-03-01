// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_additional_location.dart';
import 'get_service_hostname_configuration.dart';
import 'get_service_identity.dart';
import 'get_service_tenant_access.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Zero or more `additional_location` blocks as defined below
  final List<GetServiceAdditionalLocation> additionalLocations;
  /// The URL for the Developer Portal associated with this API Management service.
  final String developerPortalUrl;
  /// Gateway URL of the API Management service in the Region.
  final String gatewayRegionalUrl;
  /// The URL for the API Management Service's Gateway.
  final String gatewayUrl;
  /// A `hostname_configuration` block as defined below.
  final List<GetServiceHostnameConfiguration> hostnameConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetServiceIdentity> identities;
  /// The location name of the additional region among Azure Data center regions.
  final String location;
  /// The URL for the Management API.
  final String managementApiUrl;
  final String name;
  /// The email address from which the notification will be sent.
  final String notificationSenderEmail;
  /// The URL of the Publisher Portal.
  final String portalUrl;
  /// Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  final List<String> privateIpAddresses;
  /// ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  final String publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final List<String> publicIpAddresses;
  /// The email of Publisher/Company of the API Management Service.
  final String publisherEmail;
  /// The name of the Publisher/Company of the API Management Service.
  final String publisherName;
  final String resourceGroupName;
  /// The SCM (Source Code Management) endpoint.
  final String scmUrl;
  /// The SKU of the API Management Service consisting of the name and capacity, separated by an underscore.
  final String skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A `tenant_access` block as defined below.
  final List<GetServiceTenantAccess> tenantAccesses;

  /// Creates a new [GetServiceResult].
  /// [additionalLocations] Zero or more `additional_location` blocks as defined below
  /// [developerPortalUrl] The URL for the Developer Portal associated with this API Management service.
  /// [gatewayRegionalUrl] Gateway URL of the API Management service in the Region.
  /// [gatewayUrl] The URL for the API Management Service's Gateway.
  /// [hostnameConfigurations] A `hostname_configuration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location name of the additional region among Azure Data center regions.
  /// [managementApiUrl] The URL for the Management API.
  /// [name] Required.
  /// [notificationSenderEmail] The email address from which the notification will be sent.
  /// [portalUrl] The URL of the Publisher Portal.
  /// [privateIpAddresses] Private IP addresses of the API Management service in the additional location, for instances using virtual network mode.
  /// [publicIpAddressId] ID of the standard SKU IPv4 Public IP. Available only for Premium SKU deployed in a virtual network.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [publisherEmail] The email of Publisher/Company of the API Management Service.
  /// [publisherName] The name of the Publisher/Company of the API Management Service.
  /// [resourceGroupName] Required.
  /// [scmUrl] The SCM (Source Code Management) endpoint.
  /// [skuName] The SKU of the API Management Service consisting of the name and capacity, separated by an underscore.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantAccesses] A `tenant_access` block as defined below.
  GetServiceResult({
    required this.additionalLocations,
    required this.developerPortalUrl,
    required this.gatewayRegionalUrl,
    required this.gatewayUrl,
    required this.hostnameConfigurations,
    required this.id,
    required this.identities,
    required this.location,
    required this.managementApiUrl,
    required this.name,
    required this.notificationSenderEmail,
    required this.portalUrl,
    required this.privateIpAddresses,
    required this.publicIpAddressId,
    required this.publicIpAddresses,
    required this.publisherEmail,
    required this.publisherName,
    required this.resourceGroupName,
    required this.scmUrl,
    required this.skuName,
    this.tags,
    required this.tenantAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': pulumi.Input.encodeList<GetServiceAdditionalLocation, Map<String, dynamic>>(additionalLocations, (value) => value.toMap()),
      'developerPortalUrl': developerPortalUrl,
      'gatewayRegionalUrl': gatewayRegionalUrl,
      'gatewayUrl': gatewayUrl,
      'hostnameConfigurations': pulumi.Input.encodeList<GetServiceHostnameConfiguration, Map<String, dynamic>>(hostnameConfigurations, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetServiceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'managementApiUrl': managementApiUrl,
      'name': name,
      'notificationSenderEmail': notificationSenderEmail,
      'portalUrl': portalUrl,
      'privateIpAddresses': privateIpAddresses,
      'publicIpAddressId': publicIpAddressId,
      'publicIpAddresses': publicIpAddresses,
      'publisherEmail': publisherEmail,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'scmUrl': scmUrl,
      'skuName': skuName,
      'tags': ?tags,
      'tenantAccesses': pulumi.Input.encodeList<GetServiceTenantAccess, Map<String, dynamic>>(tenantAccesses, (value) => value.toMap()),
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      additionalLocations: pulumi.Input.decodeList<GetServiceAdditionalLocation>(map['additionalLocations'], (value) => GetServiceAdditionalLocation.fromMap((value as Map).cast<String, dynamic>())),
      developerPortalUrl: map['developerPortalUrl'] as String,
      gatewayRegionalUrl: map['gatewayRegionalUrl'] as String,
      gatewayUrl: map['gatewayUrl'] as String,
      hostnameConfigurations: pulumi.Input.decodeList<GetServiceHostnameConfiguration>(map['hostnameConfigurations'], (value) => GetServiceHostnameConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetServiceIdentity>(map['identities'], (value) => GetServiceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      managementApiUrl: map['managementApiUrl'] as String,
      name: map['name'] as String,
      notificationSenderEmail: map['notificationSenderEmail'] as String,
      portalUrl: map['portalUrl'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      publicIpAddressId: map['publicIpAddressId'] as String,
      publicIpAddresses: (map['publicIpAddresses'] as List).cast<String>(),
      publisherEmail: map['publisherEmail'] as String,
      publisherName: map['publisherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scmUrl: map['scmUrl'] as String,
      skuName: map['skuName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantAccesses: pulumi.Input.decodeList<GetServiceTenantAccess>(map['tenantAccesses'], (value) => GetServiceTenantAccess.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

