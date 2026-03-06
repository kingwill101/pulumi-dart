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

/// {@template pulumi_apimanagement_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_service_service_args_doc}
class ServiceArgs {
  /// One or more `additional_location` blocks as defined below.
  final pulumi.Input<List<ServiceAdditionalLocation>>? additionalLocations;
  /// One or more `certificate` blocks (up to 10) as defined below.
  final pulumi.Input<List<ServiceCertificate>>? certificates;
  /// Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// A `delegation` block as defined below.
  final pulumi.Input<ServiceDelegation>? delegation;
  /// Disable the gateway in main region? This is only supported when `additional_location` is set.
  final pulumi.Input<bool>? gatewayDisabled;
  /// A `hostname_configuration` block as defined below.
  final pulumi.Input<ServiceHostnameConfiguration>? hostnameConfiguration;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// The Azure location where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The version which the control plane API calls to API Management service are limited with version equal to or newer than.
  final pulumi.Input<String>? minApiVersion;
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Email address from which the notification will be sent.
  final pulumi.Input<String>? notificationSenderEmail;
  /// A `protocols` block as defined below.
  final pulumi.Input<ServiceProtocols>? protocols;
  /// ID of a standard SKU IPv4 Public IP.
  ///
  /// &gt; **Note:** Custom public IPs are only supported on the `Premium` and `Developer` tiers when deployed in a virtual network.
  final pulumi.Input<String>? publicIpAddressId;
  /// Is public access to the service allowed? Defaults to `true`.
  ///
  /// &gt; **Note:** This option is applicable only to the Management plane, not the API gateway or Developer portal. It is required to be `true` on the creation.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The email of publisher/company.
  final pulumi.Input<String> publisherEmail;
  /// The name of publisher/company.
  final pulumi.Input<String> publisherName;
  /// The name of the Resource Group in which the API Management Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `security` block as defined below.
  final pulumi.Input<ServiceSecurity>? security;
  /// A `sign_in` block as defined below.
  final pulumi.Input<ServiceSignIn>? signIn;
  /// A `sign_up` block as defined below.
  final pulumi.Input<ServiceSignUp>? signUp;
  /// `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium` and `PremiumV2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`).
  ///
  /// &gt; **Note:** Premium SKUs are limited to a default maximum of 12 (i.e. `Premium_12`), this can, however, be increased via support request.
  ///
  /// &gt; **Note:** Consumption SKU capacity should be 0 (e.g. `Consumption_0`) as this tier includes automatic scaling.
  final pulumi.Input<String> skuName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `tenant_access` block as defined below.
  final pulumi.Input<ServiceTenantAccess>? tenantAccess;
  /// A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  final pulumi.Input<ServiceVirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`.
  ///
  /// &gt; **Note:** Please ensure that in the subnet, inbound port 3443 is open when `virtual_network_type` is `Internal` or `External`. Additionally, please ensure other necessary ports are open according to [api management network configuration](https://learn.microsoft.com/azure/api-management/virtual-network-reference).
  final pulumi.Input<String>? virtualNetworkType;
  /// Specifies a list of Availability Zones in which this API Management service should be located.
  ///
  /// &gt; **Note:** Availability zones are only supported in the Premium tier.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ServiceArgs].
  /// [additionalLocations] One or more `additional_location` blocks as defined below.
  /// [certificates] One or more `certificate` blocks (up to 10) as defined below.
  /// [clientCertificateEnabled] Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`.
  /// [delegation] A `delegation` block as defined below.
  /// [gatewayDisabled] Disable the gateway in main region? This is only supported when `additional_location` is set.
  /// [hostnameConfiguration] A `hostname_configuration` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location where the API Management Service exists. Changing this forces a new resource to be created.
  /// [minApiVersion] The version which the control plane API calls to API Management service are limited with version equal to or newer than.
  /// [name] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [notificationSenderEmail] Email address from which the notification will be sent.
  /// [protocols] A `protocols` block as defined below.
  /// [publicIpAddressId] ID of a standard SKU IPv4 Public IP.
  /// [publicNetworkAccessEnabled] Is public access to the service allowed? Defaults to `true`.
  /// [publisherEmail] The email of publisher/company.
  /// [publisherName] The name of publisher/company.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should exist. Changing this forces a new resource to be created.
  /// [security] A `security` block as defined below.
  /// [signIn] A `sign_in` block as defined below.
  /// [signUp] A `sign_up` block as defined below.
  /// [skuName] `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium` and `PremiumV2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`).
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantAccess] A `tenant_access` block as defined below.
  /// [virtualNetworkConfiguration] A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  /// [virtualNetworkType] The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`.
  /// [zones] Specifies a list of Availability Zones in which this API Management service should be located.
  const ServiceArgs({
    this.additionalLocations,
    this.certificates,
    this.clientCertificateEnabled,
    this.delegation,
    this.gatewayDisabled,
    this.hostnameConfiguration,
    this.identity,
    this.location,
    this.minApiVersion,
    this.name,
    this.notificationSenderEmail,
    this.protocols,
    this.publicIpAddressId,
    this.publicNetworkAccessEnabled,
    required this.publisherEmail,
    required this.publisherName,
    required this.resourceGroupName,
    this.security,
    this.signIn,
    this.signUp,
    required this.skuName,
    this.tags,
    this.tenantAccess,
    this.virtualNetworkConfiguration,
    this.virtualNetworkType,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?pulumi.Input.mapOptionalInputValue<List<ServiceAdditionalLocation>, List<Map<String, dynamic>>>(additionalLocations, (value) => pulumi.Input.encodeList<ServiceAdditionalLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<ServiceCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ServiceCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'delegation': ?pulumi.Input.mapOptionalInputValue<ServiceDelegation, Map<String, dynamic>>(delegation, (value) => value.toMap()),
      'gatewayDisabled': ?gatewayDisabled,
      'hostnameConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceHostnameConfiguration, Map<String, dynamic>>(hostnameConfiguration, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minApiVersion': ?minApiVersion,
      'name': ?name,
      'notificationSenderEmail': ?notificationSenderEmail,
      'protocols': ?pulumi.Input.mapOptionalInputValue<ServiceProtocols, Map<String, dynamic>>(protocols, (value) => value.toMap()),
      'publicIpAddressId': ?publicIpAddressId,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'publisherEmail': publisherEmail,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'security': ?pulumi.Input.mapOptionalInputValue<ServiceSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'signIn': ?pulumi.Input.mapOptionalInputValue<ServiceSignIn, Map<String, dynamic>>(signIn, (value) => value.toMap()),
      'signUp': ?pulumi.Input.mapOptionalInputValue<ServiceSignUp, Map<String, dynamic>>(signUp, (value) => value.toMap()),
      'skuName': skuName,
      'tags': ?tags,
      'tenantAccess': ?pulumi.Input.mapOptionalInputValue<ServiceTenantAccess, Map<String, dynamic>>(tenantAccess, (value) => value.toMap()),
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceVirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'virtualNetworkType': ?virtualNetworkType,
      'zones': ?zones,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      additionalLocations: (() { final guardedValue = map['additionalLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAdditionalLocation>(guardedValue, (value) => ServiceAdditionalLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceCertificate>(guardedValue, (value) => ServiceCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientCertificateEnabled: (() { final guardedValue = map['clientCertificateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegation: (() { final guardedValue = map['delegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDelegation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayDisabled: (() { final guardedValue = map['gatewayDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostnameConfiguration: (() { final guardedValue = map['hostnameConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceHostnameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minApiVersion: (() { final guardedValue = map['minApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSenderEmail: (() { final guardedValue = map['notificationSenderEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceProtocols.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publisherEmail: pulumi.Input.fromValue(map['publisherEmail'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signIn: (() { final guardedValue = map['signIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSignIn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signUp: (() { final guardedValue = map['signUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSignUp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantAccess: (() { final guardedValue = map['tenantAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTenantAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworkType: (() { final guardedValue = map['virtualNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

