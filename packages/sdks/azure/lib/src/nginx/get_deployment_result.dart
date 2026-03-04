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
  /// An `auto_scale_profile` block as defined below.
  final List<GetDeploymentAutoScaleProfile> autoScaleProfiles;

  /// The automatic upgrade channel for this NGINX deployment.
  final String automaticUpgradeChannel;

  /// The number of NGINX capacity units for this NGINX Deployment.
  final int capacity;

  /// The dataplane API endpoint of the NGINX Deployment.
  final String dataplaneApiEndpoint;

  /// Whether metrics are exported to Azure Monitor.
  final bool diagnoseSupportEnabled;

  /// Preferred email associated with the NGINX Deployment.
  final String email;

  /// A `frontend_private` block as defined below.
  final List<GetDeploymentFrontendPrivate> frontendPrivates;

  /// A `frontend_public` block as defined below.
  final List<GetDeploymentFrontendPublic> frontendPublics;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetDeploymentIdentity> identities;

  /// The list of Public IP Resource IDs for this NGINX Deployment.
  final String ipAddress;

  /// The Azure Region where the NGINX Deployment exists.
  final String location;
  final List<GetDeploymentLoggingStorageAccount> loggingStorageAccounts;
  final String managedResourceGroup;

  /// Name of the autoscaling profile.
  final String name;

  /// A `network_interface` block as defined below.
  final List<GetDeploymentNetworkInterface> networkInterfaces;

  /// NGINX version of the Deployment.
  final String nginxVersion;
  final String resourceGroupName;

  /// The NGINX Deployment SKU.
  final String sku;

  /// A mapping of tags assigned to the NGINX Deployment.
  final Map<String, String> tags;

  /// A `web_application_firewall` block as defined below.
  final List<GetDeploymentWebApplicationFirewall> webApplicationFirewalls;

  /// Creates a new [GetDeploymentResult].
  /// [autoScaleProfiles] An `auto_scale_profile` block as defined below.
  /// [automaticUpgradeChannel] The automatic upgrade channel for this NGINX deployment.
  /// [capacity] The number of NGINX capacity units for this NGINX Deployment.
  /// [dataplaneApiEndpoint] The dataplane API endpoint of the NGINX Deployment.
  /// [diagnoseSupportEnabled] Whether metrics are exported to Azure Monitor.
  /// [email] Preferred email associated with the NGINX Deployment.
  /// [frontendPrivates] A `frontend_private` block as defined below.
  /// [frontendPublics] A `frontend_public` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [ipAddress] The list of Public IP Resource IDs for this NGINX Deployment.
  /// [location] The Azure Region where the NGINX Deployment exists.
  /// [loggingStorageAccounts] Required.
  /// [managedResourceGroup] Required.
  /// [name] Name of the autoscaling profile.
  /// [networkInterfaces] A `network_interface` block as defined below.
  /// [nginxVersion] NGINX version of the Deployment.
  /// [resourceGroupName] Required.
  /// [sku] The NGINX Deployment SKU.
  /// [tags] A mapping of tags assigned to the NGINX Deployment.
  /// [webApplicationFirewalls] A `web_application_firewall` block as defined below.
  GetDeploymentResult({
    required this.autoScaleProfiles,
    required this.automaticUpgradeChannel,
    required this.capacity,
    required this.dataplaneApiEndpoint,
    required this.diagnoseSupportEnabled,
    required this.email,
    required this.frontendPrivates,
    required this.frontendPublics,
    required this.id,
    required this.identities,
    required this.ipAddress,
    required this.location,
    required this.loggingStorageAccounts,
    required this.managedResourceGroup,
    required this.name,
    required this.networkInterfaces,
    required this.nginxVersion,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
    required this.webApplicationFirewalls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaleProfiles':
          pulumi.Input.encodeList<
            GetDeploymentAutoScaleProfile,
            Map<String, dynamic>
          >(autoScaleProfiles, (value) => value.toMap()),
      'automaticUpgradeChannel': automaticUpgradeChannel,
      'capacity': capacity,
      'dataplaneApiEndpoint': dataplaneApiEndpoint,
      'diagnoseSupportEnabled': diagnoseSupportEnabled,
      'email': email,
      'frontendPrivates':
          pulumi.Input.encodeList<
            GetDeploymentFrontendPrivate,
            Map<String, dynamic>
          >(frontendPrivates, (value) => value.toMap()),
      'frontendPublics':
          pulumi.Input.encodeList<
            GetDeploymentFrontendPublic,
            Map<String, dynamic>
          >(frontendPublics, (value) => value.toMap()),
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetDeploymentIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'ipAddress': ipAddress,
      'location': location,
      'loggingStorageAccounts':
          pulumi.Input.encodeList<
            GetDeploymentLoggingStorageAccount,
            Map<String, dynamic>
          >(loggingStorageAccounts, (value) => value.toMap()),
      'managedResourceGroup': managedResourceGroup,
      'name': name,
      'networkInterfaces':
          pulumi.Input.encodeList<
            GetDeploymentNetworkInterface,
            Map<String, dynamic>
          >(networkInterfaces, (value) => value.toMap()),
      'nginxVersion': nginxVersion,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
      'webApplicationFirewalls':
          pulumi.Input.encodeList<
            GetDeploymentWebApplicationFirewall,
            Map<String, dynamic>
          >(webApplicationFirewalls, (value) => value.toMap()),
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      autoScaleProfiles: pulumi.Input.decodeList<GetDeploymentAutoScaleProfile>(
        map['autoScaleProfiles']!,
        (value) => GetDeploymentAutoScaleProfile.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      automaticUpgradeChannel: map['automaticUpgradeChannel'] as String,
      capacity: map['capacity'] as int,
      dataplaneApiEndpoint: map['dataplaneApiEndpoint'] as String,
      diagnoseSupportEnabled: map['diagnoseSupportEnabled'] as bool,
      email: map['email'] as String,
      frontendPrivates: pulumi.Input.decodeList<GetDeploymentFrontendPrivate>(
        map['frontendPrivates']!,
        (value) => GetDeploymentFrontendPrivate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      frontendPublics: pulumi.Input.decodeList<GetDeploymentFrontendPublic>(
        map['frontendPublics']!,
        (value) => GetDeploymentFrontendPublic.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDeploymentIdentity>(
        map['identities']!,
        (value) => GetDeploymentIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      ipAddress: map['ipAddress'] as String,
      location: map['location'] as String,
      loggingStorageAccounts:
          pulumi.Input.decodeList<GetDeploymentLoggingStorageAccount>(
            map['loggingStorageAccounts']!,
            (value) => GetDeploymentLoggingStorageAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      managedResourceGroup: map['managedResourceGroup'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<GetDeploymentNetworkInterface>(
        map['networkInterfaces']!,
        (value) => GetDeploymentNetworkInterface.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nginxVersion: map['nginxVersion'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      webApplicationFirewalls:
          pulumi.Input.decodeList<GetDeploymentWebApplicationFirewall>(
            map['webApplicationFirewalls']!,
            (value) => GetDeploymentWebApplicationFirewall.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
