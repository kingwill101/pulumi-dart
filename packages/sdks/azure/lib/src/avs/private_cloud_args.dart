// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_management_cluster.dart';

/// {@template pulumi_avs_private_cloud_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_avs_private_cloud_private_cloud_args_doc}
class PrivateCloudArgs {
  /// Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<bool>? internetConnectionEnabled;

  /// The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? location;

  /// A `management_cluster` block as defined below.
  /// &gt; **Note:** `internet_connection_enabled` and `management_cluster[0].size` cannot be updated at the same time.
  final pulumi.Input<PrivateCloudManagementCluster> managementCluster;

  /// The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? name;

  /// The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> networkSubnetCidr;

  /// The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? nsxtPassword;

  /// The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String> skuName;

  /// A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  final pulumi.Input<Map<String, String>>? tags;

  /// The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  final pulumi.Input<String>? vcenterPassword;

  /// Creates a new [PrivateCloudArgs].
  /// [internetConnectionEnabled] Is the Azure VMware Solution Private Cloud connected to the internet? This field can not be updated with `management_cluster[0].size` together.
  /// [location] The Azure Region where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [managementCluster] A `management_cluster` block as defined below.
  /// [name] The name which should be used for this Azure VMware Solution Private Cloud. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [networkSubnetCidr] The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [nsxtPassword] The password of the VMware NSX Manager cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure VMware Solution Private Cloud should exist. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [skuName] The Name of the SKU used for this Azure VMware Solution Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av36pt`, `av48`, `av48t`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure VMware Solution Private Cloud.
  /// [vcenterPassword] The password of the VMware vCenter Server cloudadmin. Changing this forces a new Azure VMware Solution Private Cloud to be created.
  PrivateCloudArgs({
    this.internetConnectionEnabled,
    this.location,
    required this.managementCluster,
    this.name,
    required this.networkSubnetCidr,
    this.nsxtPassword,
    required this.resourceGroupName,
    required this.skuName,
    this.tags,
    this.vcenterPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetConnectionEnabled': ?internetConnectionEnabled,
      'location': ?location,
      'managementCluster':
          pulumi.Input.mapInputValue<
            PrivateCloudManagementCluster,
            Map<String, dynamic>
          >(managementCluster, (value) => value.toMap()),
      'name': ?name,
      'networkSubnetCidr': networkSubnetCidr,
      'nsxtPassword': ?nsxtPassword,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'vcenterPassword': ?vcenterPassword,
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      internetConnectionEnabled: (() {
        final guardedValue = map['internetConnectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementCluster: pulumi.Input.fromValue(
        PrivateCloudManagementCluster.fromMap(
          (map['managementCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSubnetCidr: pulumi.Input.fromValue(
        map['networkSubnetCidr'] as String,
      ),
      nsxtPassword: (() {
        final guardedValue = map['nsxtPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vcenterPassword: (() {
        final guardedValue = map['vcenterPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
