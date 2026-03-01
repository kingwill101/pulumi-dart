// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container.dart';
import 'group_diagnostics.dart';
import 'group_dns_config.dart';
import 'group_exposed_port.dart';
import 'group_identity.dart';
import 'group_image_registry_credential.dart';
import 'group_init_container.dart';

/// {@template pulumi_containerservice_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_containerservice_group_group_args_doc}
class GroupArgs {
  /// The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupContainer>> containers;
  /// A `diagnostics` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupDiagnostics>? diagnostics;
  /// A `dns_config` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupDnsConfig>? dnsConfig;
  /// The DNS label/name for the container group's IP. Changing this forces a new resource to be created.
  ///
  /// > **Note:** DNS label/name is not supported when deploying to virtual networks.
  final pulumi.Input<String>? dnsNameLabel;
  /// The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dnsNameLabelReusePolicy;
  /// Zero or more `exposed_port` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `exposed_port` can only contain ports that are also exposed on one or more containers in the group.
  final pulumi.Input<List<GroupExposedPort>>? exposedPorts;
  /// An `identity` block as defined below.
  final pulumi.Input<GroupIdentity>? identity;
  /// An `image_registry_credential` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupImageRegistryCredential>>? imageRegistryCredentials;
  /// The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupInitContainer>>? initContainers;
  /// Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`.
  ///
  /// > **Note:** `dns_name_label` and `os_type` set to `windows` are not compatible with `Private` `ip_address_type`
  final pulumi.Input<String>? ipAddressType;
  /// The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`.
  final pulumi.Input<String>? keyVaultUserAssignedIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Container Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? networkProfileId;
  /// The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** if `os_type` is set to `Windows` currently only a single `container` block is supported. Windows containers are not supported in virtual networks.
  final pulumi.Input<String> osType;
  /// The priority of the Container Group. Possible values are `Regular` and `Spot`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `priority` is set to `Spot`, the `ip_address_type` has to be `None`.
  final pulumi.Input<String>? priority;
  /// The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? restartPolicy;
  /// Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// The subnet resource IDs for a container group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetIds;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [GroupArgs].
  /// [containers] The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created.
  /// [diagnostics] A `diagnostics` block as documented below. Changing this forces a new resource to be created.
  /// [dnsConfig] A `dns_config` block as documented below. Changing this forces a new resource to be created.
  /// [dnsNameLabel] The DNS label/name for the container group's IP. Changing this forces a new resource to be created.
  /// [dnsNameLabelReusePolicy] The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. Changing this forces a new resource to be created.
  /// [exposedPorts] Zero or more `exposed_port` blocks as defined below. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [imageRegistryCredentials] An `image_registry_credential` block as documented below. Changing this forces a new resource to be created.
  /// [initContainers] The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created.
  /// [ipAddressType] Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`.
  /// [keyVaultKeyId] The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created.
  /// [keyVaultUserAssignedIdentityId] The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container Group. Changing this forces a new resource to be created.
  /// [networkProfileId] Optional.
  /// [osType] The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  /// [priority] The priority of the Container Group. Possible values are `Regular` and `Spot`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created.
  /// [restartPolicy] Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created.
  /// [sku] Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [subnetIds] The subnet resource IDs for a container group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created.
  GroupArgs({
    required pulumi.Output<List<GroupContainer>> containers,
    pulumi.Output<GroupDiagnostics>? diagnostics,
    pulumi.Output<GroupDnsConfig>? dnsConfig,
    pulumi.Output<String>? dnsNameLabel,
    pulumi.Output<String>? dnsNameLabelReusePolicy,
    pulumi.Output<List<GroupExposedPort>>? exposedPorts,
    pulumi.Output<GroupIdentity>? identity,
    pulumi.Output<List<GroupImageRegistryCredential>>? imageRegistryCredentials,
    pulumi.Output<List<GroupInitContainer>>? initContainers,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? keyVaultUserAssignedIdentityId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkProfileId,
    required pulumi.Output<String> osType,
    pulumi.Output<String>? priority,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? restartPolicy,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      containers = pulumi.Input.asInput<List<GroupContainer>>(containers),
      diagnostics = pulumi.Input.asOptionalInput<GroupDiagnostics>(diagnostics),
      dnsConfig = pulumi.Input.asOptionalInput<GroupDnsConfig>(dnsConfig),
      dnsNameLabel = pulumi.Input.asOptionalInput<String>(dnsNameLabel),
      dnsNameLabelReusePolicy = pulumi.Input.asOptionalInput<String>(dnsNameLabelReusePolicy),
      exposedPorts = pulumi.Input.asOptionalInput<List<GroupExposedPort>>(exposedPorts),
      identity = pulumi.Input.asOptionalInput<GroupIdentity>(identity),
      imageRegistryCredentials = pulumi.Input.asOptionalInput<List<GroupImageRegistryCredential>>(imageRegistryCredentials),
      initContainers = pulumi.Input.asOptionalInput<List<GroupInitContainer>>(initContainers),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      keyVaultUserAssignedIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultUserAssignedIdentityId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfileId = pulumi.Input.asOptionalInput<String>(networkProfileId),
      osType = pulumi.Input.asInput<String>(osType),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restartPolicy = pulumi.Input.asOptionalInput<String>(restartPolicy),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      subnetIds = pulumi.Input.asOptionalInput<String>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<GroupContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GroupContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<GroupDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<GroupDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'dnsNameLabel': ?dnsNameLabel,
      'dnsNameLabelReusePolicy': ?dnsNameLabelReusePolicy,
      'exposedPorts': ?pulumi.Input.mapOptionalInputValue<List<GroupExposedPort>, List<Map<String, dynamic>>>(exposedPorts, (value) => pulumi.Input.encodeList<GroupExposedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<GroupIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<GroupImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<GroupImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<GroupInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<GroupInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddressType': ?ipAddressType,
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultUserAssignedIdentityId': ?keyVaultUserAssignedIdentityId,
      'location': ?location,
      'name': ?name,
      'networkProfileId': ?networkProfileId,
      'osType': osType,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'restartPolicy': ?restartPolicy,
      'sku': ?sku,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      containers: pulumi.Output.create<List<GroupContainer>>(pulumi.Input.decodeList<GroupContainer>(map['containers'], (value) => GroupContainer.fromMap((value as Map).cast<String, dynamic>()))),
      diagnostics: map['diagnostics'] == null ? null : pulumi.Output.create<GroupDiagnostics>(GroupDiagnostics.fromMap((map['diagnostics'] as Map).cast<String, dynamic>())),
      dnsConfig: map['dnsConfig'] == null ? null : pulumi.Output.create<GroupDnsConfig>(GroupDnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())),
      dnsNameLabel: map['dnsNameLabel'] == null ? null : pulumi.Output.create<String>(map['dnsNameLabel'] as String),
      dnsNameLabelReusePolicy: map['dnsNameLabelReusePolicy'] == null ? null : pulumi.Output.create<String>(map['dnsNameLabelReusePolicy'] as String),
      exposedPorts: map['exposedPorts'] == null ? null : pulumi.Output.create<List<GroupExposedPort>>(pulumi.Input.decodeList<GroupExposedPort>(map['exposedPorts'], (value) => GroupExposedPort.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<GroupIdentity>(GroupIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Output.create<List<GroupImageRegistryCredential>>(pulumi.Input.decodeList<GroupImageRegistryCredential>(map['imageRegistryCredentials'], (value) => GroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))),
      initContainers: map['initContainers'] == null ? null : pulumi.Output.create<List<GroupInitContainer>>(pulumi.Input.decodeList<GroupInitContainer>(map['initContainers'], (value) => GroupInitContainer.fromMap((value as Map).cast<String, dynamic>()))),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      keyVaultUserAssignedIdentityId: map['keyVaultUserAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultUserAssignedIdentityId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfileId: map['networkProfileId'] == null ? null : pulumi.Output.create<String>(map['networkProfileId'] as String),
      osType: pulumi.Output.create<String>(map['osType'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restartPolicy: map['restartPolicy'] == null ? null : pulumi.Output.create<String>(map['restartPolicy'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<String>(map['subnetIds'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

