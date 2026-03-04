// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container.dart';
import 'group_diagnostics.dart';
import 'group_dns_config.dart';
import 'group_exposed_port.dart';
import 'group_identity.dart';
import 'group_image_registry_credential.dart';
import 'group_init_container.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupContainer>>? containers;

  /// A `diagnostics` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupDiagnostics>? diagnostics;

  /// A `dns_config` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupDnsConfig>? dnsConfig;

  /// The DNS label/name for the container group's IP. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** DNS label/name is not supported when deploying to virtual networks.
  final pulumi.Input<String>? dnsNameLabel;

  /// The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dnsNameLabelReusePolicy;

  /// Zero or more `exposed_port` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `exposed_port` can only contain ports that are also exposed on one or more containers in the group.
  final pulumi.Input<List<GroupExposedPort>>? exposedPorts;

  /// The FQDN of the container group derived from `dns_name_label`.
  final pulumi.Input<String>? fqdn;

  /// An `identity` block as defined below.
  final pulumi.Input<GroupIdentity>? identity;

  /// An `image_registry_credential` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupImageRegistryCredential>>?
  imageRegistryCredentials;

  /// The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GroupInitContainer>>? initContainers;

  /// The IP address allocated to the container group.
  final pulumi.Input<String>? ipAddress;

  /// Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`.
  ///
  /// &gt; **Note:** `dns_name_label` and `os_type` set to `windows` are not compatible with `Private` `ip_address_type`
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
  /// &gt; **Note:** if `os_type` is set to `Windows` currently only a single `container` block is supported. Windows containers are not supported in virtual networks.
  final pulumi.Input<String>? osType;

  /// The priority of the Container Group. Possible values are `Regular` and `Spot`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `priority` is set to `Spot`, the `ip_address_type` has to be `None`.
  final pulumi.Input<String>? priority;

  /// The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

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

  /// Creates a new [GroupState].
  /// [containers] The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created.
  /// [diagnostics] A `diagnostics` block as documented below. Changing this forces a new resource to be created.
  /// [dnsConfig] A `dns_config` block as documented below. Changing this forces a new resource to be created.
  /// [dnsNameLabel] The DNS label/name for the container group's IP. Changing this forces a new resource to be created.
  /// [dnsNameLabelReusePolicy] The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. Changing this forces a new resource to be created.
  /// [exposedPorts] Zero or more `exposed_port` blocks as defined below. Changing this forces a new resource to be created.
  /// [fqdn] The FQDN of the container group derived from `dns_name_label`.
  /// [identity] An `identity` block as defined below.
  /// [imageRegistryCredentials] An `image_registry_credential` block as documented below. Changing this forces a new resource to be created.
  /// [initContainers] The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created.
  /// [ipAddress] The IP address allocated to the container group.
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
  GroupState({
    this.containers,
    this.diagnostics,
    this.dnsConfig,
    this.dnsNameLabel,
    this.dnsNameLabelReusePolicy,
    this.exposedPorts,
    this.fqdn,
    this.identity,
    this.imageRegistryCredentials,
    this.initContainers,
    this.ipAddress,
    this.ipAddressType,
    this.keyVaultKeyId,
    this.keyVaultUserAssignedIdentityId,
    this.location,
    this.name,
    this.networkProfileId,
    this.osType,
    this.priority,
    this.resourceGroupName,
    this.restartPolicy,
    this.sku,
    this.subnetIds,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupContainer>,
            List<Map<String, dynamic>>
          >(
            containers,
            (value) =>
                pulumi.Input.encodeList<GroupContainer, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'diagnostics':
          ?pulumi.Input.mapOptionalInputValue<
            GroupDiagnostics,
            Map<String, dynamic>
          >(diagnostics, (value) => value.toMap()),
      'dnsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GroupDnsConfig,
            Map<String, dynamic>
          >(dnsConfig, (value) => value.toMap()),
      'dnsNameLabel': ?dnsNameLabel,
      'dnsNameLabelReusePolicy': ?dnsNameLabelReusePolicy,
      'exposedPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupExposedPort>,
            List<Map<String, dynamic>>
          >(
            exposedPorts,
            (value) =>
                pulumi.Input.encodeList<GroupExposedPort, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'fqdn': ?fqdn,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            GroupIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'imageRegistryCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupImageRegistryCredential>,
            List<Map<String, dynamic>>
          >(
            imageRegistryCredentials,
            (value) =>
                pulumi.Input.encodeList<
                  GroupImageRegistryCredential,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'initContainers':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupInitContainer>,
            List<Map<String, dynamic>>
          >(
            initContainers,
            (value) =>
                pulumi.Input.encodeList<
                  GroupInitContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipAddress': ?ipAddress,
      'ipAddressType': ?ipAddressType,
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultUserAssignedIdentityId': ?keyVaultUserAssignedIdentityId,
      'location': ?location,
      'name': ?name,
      'networkProfileId': ?networkProfileId,
      'osType': ?osType,
      'priority': ?priority,
      'resourceGroupName': ?resourceGroupName,
      'restartPolicy': ?restartPolicy,
      'sku': ?sku,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      containers: (() {
        final guardedValue = map['containers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupContainer>(
            guardedValue,
            (value) =>
                GroupContainer.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      diagnostics: (() {
        final guardedValue = map['diagnostics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupDiagnostics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dnsConfig: (() {
        final guardedValue = map['dnsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      dnsNameLabel: (() {
        final guardedValue = map['dnsNameLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsNameLabelReusePolicy: (() {
        final guardedValue = map['dnsNameLabelReusePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exposedPorts: (() {
        final guardedValue = map['exposedPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupExposedPort>(
            guardedValue,
            (value) => GroupExposedPort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      imageRegistryCredentials: (() {
        final guardedValue = map['imageRegistryCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupImageRegistryCredential>(
            guardedValue,
            (value) => GroupImageRegistryCredential.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      initContainers: (() {
        final guardedValue = map['initContainers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupInitContainer>(
            guardedValue,
            (value) => GroupInitContainer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddressType: (() {
        final guardedValue = map['ipAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultKeyId: (() {
        final guardedValue = map['keyVaultKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUserAssignedIdentityId: (() {
        final guardedValue = map['keyVaultUserAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkProfileId: (() {
        final guardedValue = map['networkProfileId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restartPolicy: (() {
        final guardedValue = map['restartPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetIds: (() {
        final guardedValue = map['subnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
