// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_auto_scale_profile.dart';
import 'deployment_frontend_private.dart';
import 'deployment_frontend_public.dart';
import 'deployment_identity.dart';
import 'deployment_logging_storage_account.dart';
import 'deployment_network_interface.dart';
import 'deployment_web_application_firewall.dart';

/// {@template pulumi_nginx_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_nginx_deployment_deployment_args_doc}
class DeploymentArgs {
  /// An `auto_scale_profile` block as defined below.
  final pulumi.Input<List<DeploymentAutoScaleProfile>>? autoScaleProfiles;
  /// Specify the automatic upgrade channel for the NGINX deployment. Defaults to `stable`. The possible values are `stable` and `preview`.
  final pulumi.Input<String>? automaticUpgradeChannel;
  /// Specify the number of NGINX capacity units for this NGINX deployment.
  ///
  /// > **Note:** For more information on NGINX capacity units, please refer to the [NGINX scaling guidance documentation](https://docs.nginx.com/nginxaas/azure/quickstart/scaling/)
  final pulumi.Input<int>? capacity;
  /// Should the metrics be exported to Azure Monitor?
  final pulumi.Input<bool>? diagnoseSupportEnabled;
  /// Specify the preferred support contact email address for receiving alerts and notifications.
  final pulumi.Input<String>? email;
  /// One or more `frontend_private` blocks as defined below.
  final pulumi.Input<List<DeploymentFrontendPrivate>>? frontendPrivates;
  /// A `frontend_public` block as defined below.
  final pulumi.Input<DeploymentFrontendPublic>? frontendPublic;
  /// An `identity` block as defined below.
  final pulumi.Input<DeploymentIdentity>? identity;
  /// The Azure Region where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<List<DeploymentLoggingStorageAccount>>? loggingStorageAccounts;
  final pulumi.Input<String>? managedResourceGroup;
  /// The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` blocks as defined below.
  final pulumi.Input<List<DeploymentNetworkInterface>>? networkInterfaces;
  /// The name of the Resource Group where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the NGINX Deployment SKU.
  ///
  /// > **Note:** For a list of available SKUs, please reference the [NGINXaaS for Azure documentation](https://docs.nginx.com/nginxaas/azure/billing/overview)
  ///
  /// > **Note:** If you are setting the `sku` to `basic_Monthly`, you cannot specify a `capacity` or `auto_scale_profile`; basic plans do not support scaling. Other `sku`s require either `capacity` or `auto_scale_profile`. If you're using `basic_Monthly` with deployments created before v4.0, you may need to use Terraform's `ignore_changes` functionality to ignore changes to the `capacity` field.
  final pulumi.Input<String> sku;
  /// A mapping of tags which should be assigned to the NGINX Deployment.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `web_application_firewall` blocks as defined below.
  final pulumi.Input<DeploymentWebApplicationFirewall>? webApplicationFirewall;

  /// Creates a new [DeploymentArgs].
  /// [autoScaleProfiles] An `auto_scale_profile` block as defined below.
  /// [automaticUpgradeChannel] Specify the automatic upgrade channel for the NGINX deployment. Defaults to `stable`. The possible values are `stable` and `preview`.
  /// [capacity] Specify the number of NGINX capacity units for this NGINX deployment.
  /// [diagnoseSupportEnabled] Should the metrics be exported to Azure Monitor?
  /// [email] Specify the preferred support contact email address for receiving alerts and notifications.
  /// [frontendPrivates] One or more `frontend_private` blocks as defined below.
  /// [frontendPublic] A `frontend_public` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  /// [loggingStorageAccounts] Optional.
  /// [managedResourceGroup] Optional.
  /// [name] The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  /// [networkInterfaces] One or more `network_interface` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  /// [sku] Specifies the NGINX Deployment SKU.
  /// [tags] A mapping of tags which should be assigned to the NGINX Deployment.
  /// [webApplicationFirewall] A `web_application_firewall` blocks as defined below.
  DeploymentArgs({
    this.autoScaleProfiles,
    this.automaticUpgradeChannel,
    this.capacity,
    this.diagnoseSupportEnabled,
    this.email,
    this.frontendPrivates,
    this.frontendPublic,
    this.identity,
    this.location,
    this.loggingStorageAccounts,
    this.managedResourceGroup,
    this.name,
    this.networkInterfaces,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.webApplicationFirewall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaleProfiles': ?pulumi.Input.mapOptionalInputValue<List<DeploymentAutoScaleProfile>, List<Map<String, dynamic>>>(autoScaleProfiles, (value) => pulumi.Input.encodeList<DeploymentAutoScaleProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automaticUpgradeChannel': ?automaticUpgradeChannel,
      'capacity': ?capacity,
      'diagnoseSupportEnabled': ?diagnoseSupportEnabled,
      'email': ?email,
      'frontendPrivates': ?pulumi.Input.mapOptionalInputValue<List<DeploymentFrontendPrivate>, List<Map<String, dynamic>>>(frontendPrivates, (value) => pulumi.Input.encodeList<DeploymentFrontendPrivate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPublic': ?pulumi.Input.mapOptionalInputValue<DeploymentFrontendPublic, Map<String, dynamic>>(frontendPublic, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DeploymentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'loggingStorageAccounts': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLoggingStorageAccount>, List<Map<String, dynamic>>>(loggingStorageAccounts, (value) => pulumi.Input.encodeList<DeploymentLoggingStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResourceGroup': ?managedResourceGroup,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<DeploymentNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<DeploymentNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
      'webApplicationFirewall': ?pulumi.Input.mapOptionalInputValue<DeploymentWebApplicationFirewall, Map<String, dynamic>>(webApplicationFirewall, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      autoScaleProfiles: map['autoScaleProfiles'] == null ? null : (pulumi.Input.decodeList<DeploymentAutoScaleProfile>(map['autoScaleProfiles'], (value) => DeploymentAutoScaleProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      automaticUpgradeChannel: map['automaticUpgradeChannel'] == null ? null : (map['automaticUpgradeChannel'] as String).input(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      diagnoseSupportEnabled: map['diagnoseSupportEnabled'] == null ? null : (map['diagnoseSupportEnabled'] as bool).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      frontendPrivates: map['frontendPrivates'] == null ? null : (pulumi.Input.decodeList<DeploymentFrontendPrivate>(map['frontendPrivates'], (value) => DeploymentFrontendPrivate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      frontendPublic: map['frontendPublic'] == null ? null : (DeploymentFrontendPublic.fromMap((map['frontendPublic'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (DeploymentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      loggingStorageAccounts: map['loggingStorageAccounts'] == null ? null : (pulumi.Input.decodeList<DeploymentLoggingStorageAccount>(map['loggingStorageAccounts'], (value) => DeploymentLoggingStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedResourceGroup: map['managedResourceGroup'] == null ? null : (map['managedResourceGroup'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<DeploymentNetworkInterface>(map['networkInterfaces'], (value) => DeploymentNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      webApplicationFirewall: map['webApplicationFirewall'] == null ? null : (DeploymentWebApplicationFirewall.fromMap((map['webApplicationFirewall'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

