// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_additional_location.dart';
import 'service_certificate.dart';
import 'service_delegation.dart';
import 'service_hostname_configuration.dart';
import 'service_identity.dart';
import 'service_protocols.dart';
import 'service_security.dart';
import 'service_sign_in.dart';
import 'service_sign_up.dart';
import 'service_tenant_access.dart';
import 'service_virtual_network_configuration.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// One or more `additional_location` blocks as defined below.
  final pulumi.Input<List<ServiceAdditionalLocation>>? additionalLocations;
  /// One or more `certificate` blocks (up to 10) as defined below.
  final pulumi.Input<List<ServiceCertificate>>? certificates;
  /// Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// A `delegation` block as defined below.
  final pulumi.Input<ServiceDelegation>? delegation;
  /// The URL for the Developer Portal associated with this API Management service.
  final pulumi.Input<String>? developerPortalUrl;
  /// Disable the gateway in main region? This is only supported when `additional_location` is set.
  final pulumi.Input<bool>? gatewayDisabled;
  /// The URL of the Regional Gateway for the API Management Service in the specified region.
  final pulumi.Input<String>? gatewayRegionalUrl;
  /// The URL of the Gateway for the API Management Service.
  final pulumi.Input<String>? gatewayUrl;
  /// A `hostname_configuration` block as defined below.
  final pulumi.Input<ServiceHostnameConfiguration>? hostnameConfiguration;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// The Azure location where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The URL for the Management API associated with this API Management service.
  final pulumi.Input<String>? managementApiUrl;
  /// The version which the control plane API calls to API Management service are limited with version equal to or newer than.
  final pulumi.Input<String>? minApiVersion;
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Email address from which the notification will be sent.
  final pulumi.Input<String>? notificationSenderEmail;
  /// The URL for the Publisher Portal associated with this API Management service.
  final pulumi.Input<String>? portalUrl;
  /// The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// A `protocols` block as defined below.
  final pulumi.Input<ServiceProtocols>? protocols;
  /// ID of a standard SKU IPv4 Public IP.
  ///
  /// > **Note:** Custom public IPs are only supported on the `Premium` and `Developer` tiers when deployed in a virtual network.
  final pulumi.Input<String>? publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// Is public access to the service allowed? Defaults to `true`.
  ///
  /// > **Note:** This option is applicable only to the Management plane, not the API gateway or Developer portal. It is required to be `true` on the creation.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The email of publisher/company.
  final pulumi.Input<String>? publisherEmail;
  /// The name of publisher/company.
  final pulumi.Input<String>? publisherName;
  /// The name of the Resource Group in which the API Management Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The URL for the SCM (Source Code Management) Endpoint associated with this API Management service.
  final pulumi.Input<String>? scmUrl;
  /// A `security` block as defined below.
  final pulumi.Input<ServiceSecurity>? security;
  /// A `sign_in` block as defined below.
  final pulumi.Input<ServiceSignIn>? signIn;
  /// A `sign_up` block as defined below.
  final pulumi.Input<ServiceSignUp>? signUp;
  /// `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium` and `PremiumV2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`).
  ///
  /// > **Note:** Premium SKUs are limited to a default maximum of 12 (i.e. `Premium_12`), this can, however, be increased via support request.
  ///
  /// > **Note:** Consumption SKU capacity should be 0 (e.g. `Consumption_0`) as this tier includes automatic scaling.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `tenant_access` block as defined below.
  final pulumi.Input<ServiceTenantAccess>? tenantAccess;
  /// A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  final pulumi.Input<ServiceVirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`.
  ///
  /// > **Note:** Please ensure that in the subnet, inbound port 3443 is open when `virtual_network_type` is `Internal` or `External`. Additionally, please ensure other necessary ports are open according to [api management network configuration](https://learn.microsoft.com/azure/api-management/virtual-network-reference).
  final pulumi.Input<String>? virtualNetworkType;
  /// Specifies a list of Availability Zones in which this API Management service should be located.
  ///
  /// > **Note:** Availability zones are only supported in the Premium tier.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ServiceState].
  /// [additionalLocations] One or more `additional_location` blocks as defined below.
  /// [certificates] One or more `certificate` blocks (up to 10) as defined below.
  /// [clientCertificateEnabled] Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`.
  /// [delegation] A `delegation` block as defined below.
  /// [developerPortalUrl] The URL for the Developer Portal associated with this API Management service.
  /// [gatewayDisabled] Disable the gateway in main region? This is only supported when `additional_location` is set.
  /// [gatewayRegionalUrl] The URL of the Regional Gateway for the API Management Service in the specified region.
  /// [gatewayUrl] The URL of the Gateway for the API Management Service.
  /// [hostnameConfiguration] A `hostname_configuration` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location where the API Management Service exists. Changing this forces a new resource to be created.
  /// [managementApiUrl] The URL for the Management API associated with this API Management service.
  /// [minApiVersion] The version which the control plane API calls to API Management service are limited with version equal to or newer than.
  /// [name] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [notificationSenderEmail] Email address from which the notification will be sent.
  /// [portalUrl] The URL for the Publisher Portal associated with this API Management service.
  /// [privateIpAddresses] The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  /// [protocols] A `protocols` block as defined below.
  /// [publicIpAddressId] ID of a standard SKU IPv4 Public IP.
  /// [publicIpAddresses] Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  /// [publicNetworkAccessEnabled] Is public access to the service allowed? Defaults to `true`.
  /// [publisherEmail] The email of publisher/company.
  /// [publisherName] The name of publisher/company.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should exist. Changing this forces a new resource to be created.
  /// [scmUrl] The URL for the SCM (Source Code Management) Endpoint associated with this API Management service.
  /// [security] A `security` block as defined below.
  /// [signIn] A `sign_in` block as defined below.
  /// [signUp] A `sign_up` block as defined below.
  /// [skuName] `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium` and `PremiumV2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`).
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantAccess] A `tenant_access` block as defined below.
  /// [virtualNetworkConfiguration] A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  /// [virtualNetworkType] The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`.
  /// [zones] Specifies a list of Availability Zones in which this API Management service should be located.
  ServiceState({
    pulumi.Output<List<ServiceAdditionalLocation>>? additionalLocations,
    pulumi.Output<List<ServiceCertificate>>? certificates,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<ServiceDelegation>? delegation,
    pulumi.Output<String>? developerPortalUrl,
    pulumi.Output<bool>? gatewayDisabled,
    pulumi.Output<String>? gatewayRegionalUrl,
    pulumi.Output<String>? gatewayUrl,
    pulumi.Output<ServiceHostnameConfiguration>? hostnameConfiguration,
    pulumi.Output<ServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managementApiUrl,
    pulumi.Output<String>? minApiVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationSenderEmail,
    pulumi.Output<String>? portalUrl,
    pulumi.Output<List<String>>? privateIpAddresses,
    pulumi.Output<ServiceProtocols>? protocols,
    pulumi.Output<String>? publicIpAddressId,
    pulumi.Output<List<String>>? publicIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? publisherEmail,
    pulumi.Output<String>? publisherName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? scmUrl,
    pulumi.Output<ServiceSecurity>? security,
    pulumi.Output<ServiceSignIn>? signIn,
    pulumi.Output<ServiceSignUp>? signUp,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ServiceTenantAccess>? tenantAccess,
    pulumi.Output<ServiceVirtualNetworkConfiguration>? virtualNetworkConfiguration,
    pulumi.Output<String>? virtualNetworkType,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalLocations = pulumi.Input.asOptionalInput<List<ServiceAdditionalLocation>>(additionalLocations),
      certificates = pulumi.Input.asOptionalInput<List<ServiceCertificate>>(certificates),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      delegation = pulumi.Input.asOptionalInput<ServiceDelegation>(delegation),
      developerPortalUrl = pulumi.Input.asOptionalInput<String>(developerPortalUrl),
      gatewayDisabled = pulumi.Input.asOptionalInput<bool>(gatewayDisabled),
      gatewayRegionalUrl = pulumi.Input.asOptionalInput<String>(gatewayRegionalUrl),
      gatewayUrl = pulumi.Input.asOptionalInput<String>(gatewayUrl),
      hostnameConfiguration = pulumi.Input.asOptionalInput<ServiceHostnameConfiguration>(hostnameConfiguration),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementApiUrl = pulumi.Input.asOptionalInput<String>(managementApiUrl),
      minApiVersion = pulumi.Input.asOptionalInput<String>(minApiVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationSenderEmail = pulumi.Input.asOptionalInput<String>(notificationSenderEmail),
      portalUrl = pulumi.Input.asOptionalInput<String>(portalUrl),
      privateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(privateIpAddresses),
      protocols = pulumi.Input.asOptionalInput<ServiceProtocols>(protocols),
      publicIpAddressId = pulumi.Input.asOptionalInput<String>(publicIpAddressId),
      publicIpAddresses = pulumi.Input.asOptionalInput<List<String>>(publicIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      publisherEmail = pulumi.Input.asOptionalInput<String>(publisherEmail),
      publisherName = pulumi.Input.asOptionalInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scmUrl = pulumi.Input.asOptionalInput<String>(scmUrl),
      security = pulumi.Input.asOptionalInput<ServiceSecurity>(security),
      signIn = pulumi.Input.asOptionalInput<ServiceSignIn>(signIn),
      signUp = pulumi.Input.asOptionalInput<ServiceSignUp>(signUp),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantAccess = pulumi.Input.asOptionalInput<ServiceTenantAccess>(tenantAccess),
      virtualNetworkConfiguration = pulumi.Input.asOptionalInput<ServiceVirtualNetworkConfiguration>(virtualNetworkConfiguration),
      virtualNetworkType = pulumi.Input.asOptionalInput<String>(virtualNetworkType),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?pulumi.Input.mapOptionalInputValue<List<ServiceAdditionalLocation>, List<Map<String, dynamic>>>(additionalLocations, (value) => pulumi.Input.encodeList<ServiceAdditionalLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<ServiceCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ServiceCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'delegation': ?pulumi.Input.mapOptionalInputValue<ServiceDelegation, Map<String, dynamic>>(delegation, (value) => value.toMap()),
      'developerPortalUrl': ?developerPortalUrl,
      'gatewayDisabled': ?gatewayDisabled,
      'gatewayRegionalUrl': ?gatewayRegionalUrl,
      'gatewayUrl': ?gatewayUrl,
      'hostnameConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceHostnameConfiguration, Map<String, dynamic>>(hostnameConfiguration, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managementApiUrl': ?managementApiUrl,
      'minApiVersion': ?minApiVersion,
      'name': ?name,
      'notificationSenderEmail': ?notificationSenderEmail,
      'portalUrl': ?portalUrl,
      'privateIpAddresses': ?privateIpAddresses,
      'protocols': ?pulumi.Input.mapOptionalInputValue<ServiceProtocols, Map<String, dynamic>>(protocols, (value) => value.toMap()),
      'publicIpAddressId': ?publicIpAddressId,
      'publicIpAddresses': ?publicIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'publisherEmail': ?publisherEmail,
      'publisherName': ?publisherName,
      'resourceGroupName': ?resourceGroupName,
      'scmUrl': ?scmUrl,
      'security': ?pulumi.Input.mapOptionalInputValue<ServiceSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'signIn': ?pulumi.Input.mapOptionalInputValue<ServiceSignIn, Map<String, dynamic>>(signIn, (value) => value.toMap()),
      'signUp': ?pulumi.Input.mapOptionalInputValue<ServiceSignUp, Map<String, dynamic>>(signUp, (value) => value.toMap()),
      'skuName': ?skuName,
      'tags': ?tags,
      'tenantAccess': ?pulumi.Input.mapOptionalInputValue<ServiceTenantAccess, Map<String, dynamic>>(tenantAccess, (value) => value.toMap()),
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceVirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'virtualNetworkType': ?virtualNetworkType,
      'zones': ?zones,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      additionalLocations: map['additionalLocations'] == null ? null : pulumi.Output.create<List<ServiceAdditionalLocation>>(pulumi.Input.decodeList<ServiceAdditionalLocation>(map['additionalLocations'], (value) => ServiceAdditionalLocation.fromMap((value as Map).cast<String, dynamic>()))),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<ServiceCertificate>>(pulumi.Input.decodeList<ServiceCertificate>(map['certificates'], (value) => ServiceCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      delegation: map['delegation'] == null ? null : pulumi.Output.create<ServiceDelegation>(ServiceDelegation.fromMap((map['delegation'] as Map).cast<String, dynamic>())),
      developerPortalUrl: map['developerPortalUrl'] == null ? null : pulumi.Output.create<String>(map['developerPortalUrl'] as String),
      gatewayDisabled: map['gatewayDisabled'] == null ? null : pulumi.Output.create<bool>(map['gatewayDisabled'] as bool),
      gatewayRegionalUrl: map['gatewayRegionalUrl'] == null ? null : pulumi.Output.create<String>(map['gatewayRegionalUrl'] as String),
      gatewayUrl: map['gatewayUrl'] == null ? null : pulumi.Output.create<String>(map['gatewayUrl'] as String),
      hostnameConfiguration: map['hostnameConfiguration'] == null ? null : pulumi.Output.create<ServiceHostnameConfiguration>(ServiceHostnameConfiguration.fromMap((map['hostnameConfiguration'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceIdentity>(ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementApiUrl: map['managementApiUrl'] == null ? null : pulumi.Output.create<String>(map['managementApiUrl'] as String),
      minApiVersion: map['minApiVersion'] == null ? null : pulumi.Output.create<String>(map['minApiVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationSenderEmail: map['notificationSenderEmail'] == null ? null : pulumi.Output.create<String>(map['notificationSenderEmail'] as String),
      portalUrl: map['portalUrl'] == null ? null : pulumi.Output.create<String>(map['portalUrl'] as String),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['privateIpAddresses'] as List).cast<String>()),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<ServiceProtocols>(ServiceProtocols.fromMap((map['protocols'] as Map).cast<String, dynamic>())),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressId'] as String),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['publicIpAddresses'] as List).cast<String>()),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      publisherEmail: map['publisherEmail'] == null ? null : pulumi.Output.create<String>(map['publisherEmail'] as String),
      publisherName: map['publisherName'] == null ? null : pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scmUrl: map['scmUrl'] == null ? null : pulumi.Output.create<String>(map['scmUrl'] as String),
      security: map['security'] == null ? null : pulumi.Output.create<ServiceSecurity>(ServiceSecurity.fromMap((map['security'] as Map).cast<String, dynamic>())),
      signIn: map['signIn'] == null ? null : pulumi.Output.create<ServiceSignIn>(ServiceSignIn.fromMap((map['signIn'] as Map).cast<String, dynamic>())),
      signUp: map['signUp'] == null ? null : pulumi.Output.create<ServiceSignUp>(ServiceSignUp.fromMap((map['signUp'] as Map).cast<String, dynamic>())),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantAccess: map['tenantAccess'] == null ? null : pulumi.Output.create<ServiceTenantAccess>(ServiceTenantAccess.fromMap((map['tenantAccess'] as Map).cast<String, dynamic>())),
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : pulumi.Output.create<ServiceVirtualNetworkConfiguration>(ServiceVirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>())),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkType'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

