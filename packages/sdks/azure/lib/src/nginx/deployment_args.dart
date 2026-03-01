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
    pulumi.Output<List<DeploymentAutoScaleProfile>>? autoScaleProfiles,
    pulumi.Output<String>? automaticUpgradeChannel,
    pulumi.Output<int>? capacity,
    pulumi.Output<bool>? diagnoseSupportEnabled,
    pulumi.Output<String>? email,
    pulumi.Output<List<DeploymentFrontendPrivate>>? frontendPrivates,
    pulumi.Output<DeploymentFrontendPublic>? frontendPublic,
    pulumi.Output<DeploymentIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<DeploymentLoggingStorageAccount>>? loggingStorageAccounts,
    pulumi.Output<String>? managedResourceGroup,
    pulumi.Output<String>? name,
    pulumi.Output<List<DeploymentNetworkInterface>>? networkInterfaces,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<DeploymentWebApplicationFirewall>? webApplicationFirewall,
  }) :
      autoScaleProfiles = pulumi.Input.asOptionalInput<List<DeploymentAutoScaleProfile>>(autoScaleProfiles),
      automaticUpgradeChannel = pulumi.Input.asOptionalInput<String>(automaticUpgradeChannel),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      diagnoseSupportEnabled = pulumi.Input.asOptionalInput<bool>(diagnoseSupportEnabled),
      email = pulumi.Input.asOptionalInput<String>(email),
      frontendPrivates = pulumi.Input.asOptionalInput<List<DeploymentFrontendPrivate>>(frontendPrivates),
      frontendPublic = pulumi.Input.asOptionalInput<DeploymentFrontendPublic>(frontendPublic),
      identity = pulumi.Input.asOptionalInput<DeploymentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingStorageAccounts = pulumi.Input.asOptionalInput<List<DeploymentLoggingStorageAccount>>(loggingStorageAccounts),
      managedResourceGroup = pulumi.Input.asOptionalInput<String>(managedResourceGroup),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<List<DeploymentNetworkInterface>>(networkInterfaces),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      webApplicationFirewall = pulumi.Input.asOptionalInput<DeploymentWebApplicationFirewall>(webApplicationFirewall);

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
      autoScaleProfiles: map['autoScaleProfiles'] == null ? null : pulumi.Output.create<List<DeploymentAutoScaleProfile>>(pulumi.Input.decodeList<DeploymentAutoScaleProfile>(map['autoScaleProfiles'], (value) => DeploymentAutoScaleProfile.fromMap((value as Map).cast<String, dynamic>()))),
      automaticUpgradeChannel: map['automaticUpgradeChannel'] == null ? null : pulumi.Output.create<String>(map['automaticUpgradeChannel'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      diagnoseSupportEnabled: map['diagnoseSupportEnabled'] == null ? null : pulumi.Output.create<bool>(map['diagnoseSupportEnabled'] as bool),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      frontendPrivates: map['frontendPrivates'] == null ? null : pulumi.Output.create<List<DeploymentFrontendPrivate>>(pulumi.Input.decodeList<DeploymentFrontendPrivate>(map['frontendPrivates'], (value) => DeploymentFrontendPrivate.fromMap((value as Map).cast<String, dynamic>()))),
      frontendPublic: map['frontendPublic'] == null ? null : pulumi.Output.create<DeploymentFrontendPublic>(DeploymentFrontendPublic.fromMap((map['frontendPublic'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<DeploymentIdentity>(DeploymentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loggingStorageAccounts: map['loggingStorageAccounts'] == null ? null : pulumi.Output.create<List<DeploymentLoggingStorageAccount>>(pulumi.Input.decodeList<DeploymentLoggingStorageAccount>(map['loggingStorageAccounts'], (value) => DeploymentLoggingStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      managedResourceGroup: map['managedResourceGroup'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroup'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<DeploymentNetworkInterface>>(pulumi.Input.decodeList<DeploymentNetworkInterface>(map['networkInterfaces'], (value) => DeploymentNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      webApplicationFirewall: map['webApplicationFirewall'] == null ? null : pulumi.Output.create<DeploymentWebApplicationFirewall>(DeploymentWebApplicationFirewall.fromMap((map['webApplicationFirewall'] as Map).cast<String, dynamic>())),
    );
  }
}

