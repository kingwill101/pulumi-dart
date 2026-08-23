// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_auto_scale_profile.dart';
import 'deployment_frontend_private.dart';
import 'deployment_frontend_public.dart';
import 'deployment_identity.dart';
import 'deployment_logging_storage_account.dart';
import 'deployment_network_interface.dart';
import 'deployment_web_application_firewall.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// An `autoScaleProfile` block as defined below.
  final pulumi.Input<List<DeploymentAutoScaleProfile>>? autoScaleProfiles;
  /// Specify the automatic upgrade channel for the NGINX deployment. Defaults to `stable`. The possible values are `stable` and `preview`.
  final pulumi.Input<String>? automaticUpgradeChannel;
  /// Specify the number of NGINX capacity units for this NGINX deployment.
  ///
  /// &gt; **Note:** For more information on NGINX capacity units, please refer to the [NGINX scaling guidance documentation](https://docs.nginx.com/nginxaas/azure/quickstart/scaling/)
  final pulumi.Input<int>? capacity;
  /// The dataplane API endpoint of the NGINX Deployment.
  final pulumi.Input<String>? dataplaneApiEndpoint;
  final pulumi.Input<bool>? diagnoseSupportEnabled;
  /// Specify the preferred support contact email address for receiving alerts and notifications.
  final pulumi.Input<String>? email;
  /// One or more `frontendPrivate` blocks as defined below.
  final pulumi.Input<List<DeploymentFrontendPrivate>>? frontendPrivates;
  /// A `frontendPublic` block as defined below.
  final pulumi.Input<DeploymentFrontendPublic>? frontendPublic;
  /// An `identity` block as defined below.
  final pulumi.Input<DeploymentIdentity>? identity;
  /// The IP address of the NGINX Deployment.
  final pulumi.Input<String>? ipAddress;
  /// The Azure Region where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<List<DeploymentLoggingStorageAccount>>? loggingStorageAccounts;
  final pulumi.Input<String>? managedResourceGroup;
  /// The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String>? name;
  /// One or more `networkInterface` blocks as defined below.
  final pulumi.Input<List<DeploymentNetworkInterface>>? networkInterfaces;
  /// The version of the NGINX Deployment.
  final pulumi.Input<String>? nginxVersion;
  /// The name of the Resource Group where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the NGINX Deployment SKU.
  ///
  /// &gt; **Note:** For a list of available SKUs, please reference the [NGINXaaS for Azure documentation](https://docs.nginx.com/nginxaas/azure/billing/overview)
  ///
  /// &gt; **Note:** If you are setting the `sku` to `basic_Monthly`, you cannot specify a `capacity` or `autoScaleProfile`; basic plans do not support scaling. Other `sku`s require either `capacity` or `autoScaleProfile`. If you're using `basic_Monthly` with deployments created before v4.0, you may need to use Terraform's `ignoreChanges` functionality to ignore changes to the `capacity` field.
  final pulumi.Input<String>? sku;
  /// A mapping of tags which should be assigned to the NGINX Deployment.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `webApplicationFirewall` blocks as defined below.
  final pulumi.Input<DeploymentWebApplicationFirewall>? webApplicationFirewall;

  /// Creates a new [DeploymentState].
  /// [autoScaleProfiles] An `autoScaleProfile` block as defined below.
  /// [automaticUpgradeChannel] Specify the automatic upgrade channel for the NGINX deployment. Defaults to `stable`. The possible values are `stable` and `preview`.
  /// [capacity] Specify the number of NGINX capacity units for this NGINX deployment.
  /// [dataplaneApiEndpoint] The dataplane API endpoint of the NGINX Deployment.
  /// [diagnoseSupportEnabled] Optional.
  /// [email] Specify the preferred support contact email address for receiving alerts and notifications.
  /// [frontendPrivates] One or more `frontendPrivate` blocks as defined below.
  /// [frontendPublic] A `frontendPublic` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [ipAddress] The IP address of the NGINX Deployment.
  /// [location] The Azure Region where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  /// [loggingStorageAccounts] Optional.
  /// [managedResourceGroup] Optional.
  /// [name] The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  /// [networkInterfaces] One or more `networkInterface` blocks as defined below.
  /// [nginxVersion] The version of the NGINX Deployment.
  /// [resourceGroupName] The name of the Resource Group where the NGINX Deployment should exist. Changing this forces a new NGINX Deployment to be created.
  /// [sku] Specifies the NGINX Deployment SKU.
  /// [tags] A mapping of tags which should be assigned to the NGINX Deployment.
  /// [webApplicationFirewall] A `webApplicationFirewall` blocks as defined below.
  const DeploymentState({
    this.autoScaleProfiles,
    this.automaticUpgradeChannel,
    this.capacity,
    this.dataplaneApiEndpoint,
    this.diagnoseSupportEnabled,
    this.email,
    this.frontendPrivates,
    this.frontendPublic,
    this.identity,
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
    this.webApplicationFirewall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaleProfiles': ?pulumi.Input.mapOptionalInputValue<List<DeploymentAutoScaleProfile>, List<Map<String, dynamic>>>(autoScaleProfiles, (value) => pulumi.Input.encodeList<DeploymentAutoScaleProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automaticUpgradeChannel': ?automaticUpgradeChannel,
      'capacity': ?capacity,
      'dataplaneApiEndpoint': ?dataplaneApiEndpoint,
      'diagnoseSupportEnabled': ?diagnoseSupportEnabled,
      'email': ?email,
      'frontendPrivates': ?pulumi.Input.mapOptionalInputValue<List<DeploymentFrontendPrivate>, List<Map<String, dynamic>>>(frontendPrivates, (value) => pulumi.Input.encodeList<DeploymentFrontendPrivate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPublic': ?pulumi.Input.mapOptionalInputValue<DeploymentFrontendPublic, Map<String, dynamic>>(frontendPublic, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DeploymentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'location': ?location,
      'loggingStorageAccounts': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLoggingStorageAccount>, List<Map<String, dynamic>>>(loggingStorageAccounts, (value) => pulumi.Input.encodeList<DeploymentLoggingStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResourceGroup': ?managedResourceGroup,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<DeploymentNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<DeploymentNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nginxVersion': ?nginxVersion,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'webApplicationFirewall': ?pulumi.Input.mapOptionalInputValue<DeploymentWebApplicationFirewall, Map<String, dynamic>>(webApplicationFirewall, (value) => value.toMap()),
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      autoScaleProfiles: (() { final guardedValue = map['autoScaleProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentAutoScaleProfile>(guardedValue, (value) => DeploymentAutoScaleProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      automaticUpgradeChannel: (() { final guardedValue = map['automaticUpgradeChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataplaneApiEndpoint: (() { final guardedValue = map['dataplaneApiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnoseSupportEnabled: (() { final guardedValue = map['diagnoseSupportEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPrivates: (() { final guardedValue = map['frontendPrivates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentFrontendPrivate>(guardedValue, (value) => DeploymentFrontendPrivate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frontendPublic: (() { final guardedValue = map['frontendPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentFrontendPublic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingStorageAccounts: (() { final guardedValue = map['loggingStorageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentLoggingStorageAccount>(guardedValue, (value) => DeploymentLoggingStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentNetworkInterface>(guardedValue, (value) => DeploymentNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nginxVersion: (() { final guardedValue = map['nginxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webApplicationFirewall: (() { final guardedValue = map['webApplicationFirewall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentWebApplicationFirewall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
