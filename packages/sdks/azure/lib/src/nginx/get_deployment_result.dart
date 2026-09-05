// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_auto_scale_profile.dart';
import 'get_deployment_frontend_private.dart';
import 'get_deployment_frontend_public.dart';
import 'get_deployment_identity.dart';
import 'get_deployment_logging_storage_account.dart';
import 'get_deployment_network_interface.dart';
import 'get_deployment_web_application_firewall.dart';

/// Result data returned by getDeployment.
class GetDeploymentResult {
  /// An `autoScaleProfile` block as defined below.
  final List<GetDeploymentAutoScaleProfile>? autoScaleProfiles;
  /// The automatic upgrade channel for this NGINX deployment.
  final String? automaticUpgradeChannel;
  /// The number of NGINX capacity units for this NGINX Deployment.
  final int? capacity;
  /// The dataplane API endpoint of the NGINX Deployment.
  final String? dataplaneApiEndpoint;
  final bool? diagnoseSupportEnabled;
  /// Preferred email associated with the NGINX Deployment.
  final String? email;
  /// A `frontendPrivate` block as defined below.
  final List<GetDeploymentFrontendPrivate>? frontendPrivates;
  /// A `frontendPublic` block as defined below.
  final List<GetDeploymentFrontendPublic>? frontendPublics;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetDeploymentIdentity>? identities;
  /// The list of Public IP Resource IDs for this NGINX Deployment.
  final String? ipAddress;
  /// The Azure Region where the NGINX Deployment exists.
  final String? location;
  final List<GetDeploymentLoggingStorageAccount>? loggingStorageAccounts;
  final String? managedResourceGroup;
  /// Name of the autoscaling profile.
  final String? name;
  /// A `networkInterface` block as defined below.
  final List<GetDeploymentNetworkInterface>? networkInterfaces;
  /// NGINX version of the Deployment.
  final String? nginxVersion;
  final String? resourceGroupName;
  /// The NGINX Deployment SKU.
  final String? sku;
  /// A mapping of tags assigned to the NGINX Deployment.
  final Map<String, String>? tags;
  /// A `webApplicationFirewall` block as defined below.
  final List<GetDeploymentWebApplicationFirewall>? webApplicationFirewalls;

  /// Creates a new [GetDeploymentResult].
  /// [autoScaleProfiles] An `autoScaleProfile` block as defined below.
  /// [automaticUpgradeChannel] The automatic upgrade channel for this NGINX deployment.
  /// [capacity] The number of NGINX capacity units for this NGINX Deployment.
  /// [dataplaneApiEndpoint] The dataplane API endpoint of the NGINX Deployment.
  /// [diagnoseSupportEnabled] Optional.
  /// [email] Preferred email associated with the NGINX Deployment.
  /// [frontendPrivates] A `frontendPrivate` block as defined below.
  /// [frontendPublics] A `frontendPublic` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [ipAddress] The list of Public IP Resource IDs for this NGINX Deployment.
  /// [location] The Azure Region where the NGINX Deployment exists.
  /// [loggingStorageAccounts] Optional.
  /// [managedResourceGroup] Optional.
  /// [name] Name of the autoscaling profile.
  /// [networkInterfaces] A `networkInterface` block as defined below.
  /// [nginxVersion] NGINX version of the Deployment.
  /// [resourceGroupName] Optional.
  /// [sku] The NGINX Deployment SKU.
  /// [tags] A mapping of tags assigned to the NGINX Deployment.
  /// [webApplicationFirewalls] A `webApplicationFirewall` block as defined below.
  const GetDeploymentResult({
    this.autoScaleProfiles,
    this.automaticUpgradeChannel,
    this.capacity,
    this.dataplaneApiEndpoint,
    this.diagnoseSupportEnabled,
    this.email,
    this.frontendPrivates,
    this.frontendPublics,
    this.id,
    this.identities,
    this.ipAddress,
    this.location,
    this.loggingStorageAccounts,
    this.managedResourceGroup,
    this.name,
    this.networkInterfaces,
    this.nginxVersion,
    this.resourceGroupName,
    this.sku,
    this.tags,
    this.webApplicationFirewalls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaleProfiles': ?(() { final guardedValue = autoScaleProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentAutoScaleProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'automaticUpgradeChannel': ?automaticUpgradeChannel,
      'capacity': ?capacity,
      'dataplaneApiEndpoint': ?dataplaneApiEndpoint,
      'diagnoseSupportEnabled': ?diagnoseSupportEnabled,
      'email': ?email,
      'frontendPrivates': ?(() { final guardedValue = frontendPrivates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentFrontendPrivate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'frontendPublics': ?(() { final guardedValue = frontendPublics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentFrontendPublic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipAddress': ?ipAddress,
      'location': ?location,
      'loggingStorageAccounts': ?(() { final guardedValue = loggingStorageAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentLoggingStorageAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedResourceGroup': ?managedResourceGroup,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nginxVersion': ?nginxVersion,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'webApplicationFirewalls': ?(() { final guardedValue = webApplicationFirewalls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeploymentWebApplicationFirewall, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      autoScaleProfiles: (() { final guardedValue = map['autoScaleProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentAutoScaleProfile>(guardedValue, (value) => GetDeploymentAutoScaleProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      automaticUpgradeChannel: (() { final guardedValue = map['automaticUpgradeChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dataplaneApiEndpoint: (() { final guardedValue = map['dataplaneApiEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diagnoseSupportEnabled: (() { final guardedValue = map['diagnoseSupportEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendPrivates: (() { final guardedValue = map['frontendPrivates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentFrontendPrivate>(guardedValue, (value) => GetDeploymentFrontendPrivate.fromMap((value as Map).cast<String, dynamic>())); })(),
      frontendPublics: (() { final guardedValue = map['frontendPublics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentFrontendPublic>(guardedValue, (value) => GetDeploymentFrontendPublic.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentIdentity>(guardedValue, (value) => GetDeploymentIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingStorageAccounts: (() { final guardedValue = map['loggingStorageAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentLoggingStorageAccount>(guardedValue, (value) => GetDeploymentLoggingStorageAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentNetworkInterface>(guardedValue, (value) => GetDeploymentNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      nginxVersion: (() { final guardedValue = map['nginxVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      webApplicationFirewalls: (() { final guardedValue = map['webApplicationFirewalls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeploymentWebApplicationFirewall>(guardedValue, (value) => GetDeploymentWebApplicationFirewall.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
