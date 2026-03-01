// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_default_access_policy.dart';
import 'cache_directory_active_directory.dart';
import 'cache_directory_flat_file.dart';
import 'cache_directory_ldap.dart';
import 'cache_dns.dart';
import 'cache_identity.dart';

/// Input properties used for looking up and filtering Cache resources.
class CacheState {
  /// Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version.
  final pulumi.Input<bool>? automaticallyRotateKeyToLatestEnabled;
  /// The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `21623`, `43246` and `86491` sizes are restricted to read only resources.
  final pulumi.Input<int>? cacheSizeInGb;
  /// A `default_access_policy` block as defined below.
  final pulumi.Input<CacheDefaultAccessPolicy>? defaultAccessPolicy;
  /// A `directory_active_directory` block as defined below.
  final pulumi.Input<CacheDirectoryActiveDirectory>? directoryActiveDirectory;
  /// A `directory_flat_file` block as defined below.
  final pulumi.Input<CacheDirectoryFlatFile>? directoryFlatFile;
  /// A `directory_ldap` block as defined below.
  ///
  /// > **Note:** Only one of `directory_active_directory`, `directory_flat_file` and `directory_ldap` can be set.
  final pulumi.Input<CacheDirectoryLdap>? directoryLdap;
  /// A `dns` block as defined below.
  final pulumi.Input<CacheDns>? dns;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<CacheIdentity>? identity;
  /// The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache.
  final pulumi.Input<String>? keyVaultKeyId;
  /// Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A list of IP Addresses where the HPC Cache can be mounted.
  final pulumi.Input<List<String>>? mountAddresses;
  /// The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  final pulumi.Input<int>? mtu;
  /// The name of the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  final pulumi.Input<String>? ntpServer;
  /// The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The read-only SKUs have restricted cache sizes. `Standard_L4_5G` must be set to `21623`. `Standard_L9G` to `43246` and `Standard_L16G` to `86491`.
  final pulumi.Input<String>? skuName;
  /// The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the HPC Cache.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CacheState].
  /// [automaticallyRotateKeyToLatestEnabled] Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version.
  /// [cacheSizeInGb] The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  /// [defaultAccessPolicy] A `default_access_policy` block as defined below.
  /// [directoryActiveDirectory] A `directory_active_directory` block as defined below.
  /// [directoryFlatFile] A `directory_flat_file` block as defined below.
  /// [directoryLdap] A `directory_ldap` block as defined below.
  /// [dns] A `dns` block as defined below.
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache.
  /// [location] Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created.
  /// [mountAddresses] A list of IP Addresses where the HPC Cache can be mounted.
  /// [mtu] The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  /// [name] The name of the HPC Cache. Changing this forces a new resource to be created.
  /// [ntpServer] The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  /// [skuName] The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the HPC Cache.
  CacheState({
    pulumi.Output<bool>? automaticallyRotateKeyToLatestEnabled,
    pulumi.Output<int>? cacheSizeInGb,
    pulumi.Output<CacheDefaultAccessPolicy>? defaultAccessPolicy,
    pulumi.Output<CacheDirectoryActiveDirectory>? directoryActiveDirectory,
    pulumi.Output<CacheDirectoryFlatFile>? directoryFlatFile,
    pulumi.Output<CacheDirectoryLdap>? directoryLdap,
    pulumi.Output<CacheDns>? dns,
    pulumi.Output<CacheIdentity>? identity,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? mountAddresses,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ntpServer,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automaticallyRotateKeyToLatestEnabled = pulumi.Input.asOptionalInput<bool>(automaticallyRotateKeyToLatestEnabled),
      cacheSizeInGb = pulumi.Input.asOptionalInput<int>(cacheSizeInGb),
      defaultAccessPolicy = pulumi.Input.asOptionalInput<CacheDefaultAccessPolicy>(defaultAccessPolicy),
      directoryActiveDirectory = pulumi.Input.asOptionalInput<CacheDirectoryActiveDirectory>(directoryActiveDirectory),
      directoryFlatFile = pulumi.Input.asOptionalInput<CacheDirectoryFlatFile>(directoryFlatFile),
      directoryLdap = pulumi.Input.asOptionalInput<CacheDirectoryLdap>(directoryLdap),
      dns = pulumi.Input.asOptionalInput<CacheDns>(dns),
      identity = pulumi.Input.asOptionalInput<CacheIdentity>(identity),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      mountAddresses = pulumi.Input.asOptionalInput<List<String>>(mountAddresses),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      ntpServer = pulumi.Input.asOptionalInput<String>(ntpServer),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyRotateKeyToLatestEnabled': ?automaticallyRotateKeyToLatestEnabled,
      'cacheSizeInGb': ?cacheSizeInGb,
      'defaultAccessPolicy': ?pulumi.Input.mapOptionalInputValue<CacheDefaultAccessPolicy, Map<String, dynamic>>(defaultAccessPolicy, (value) => value.toMap()),
      'directoryActiveDirectory': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryActiveDirectory, Map<String, dynamic>>(directoryActiveDirectory, (value) => value.toMap()),
      'directoryFlatFile': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryFlatFile, Map<String, dynamic>>(directoryFlatFile, (value) => value.toMap()),
      'directoryLdap': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryLdap, Map<String, dynamic>>(directoryLdap, (value) => value.toMap()),
      'dns': ?pulumi.Input.mapOptionalInputValue<CacheDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<CacheIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultKeyId': ?keyVaultKeyId,
      'location': ?location,
      'mountAddresses': ?mountAddresses,
      'mtu': ?mtu,
      'name': ?name,
      'ntpServer': ?ntpServer,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory CacheState.fromMap(Map<String, dynamic> map) {
    return CacheState(
      automaticallyRotateKeyToLatestEnabled: map['automaticallyRotateKeyToLatestEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticallyRotateKeyToLatestEnabled'] as bool),
      cacheSizeInGb: map['cacheSizeInGb'] == null ? null : pulumi.Output.create<int>(map['cacheSizeInGb'] as int),
      defaultAccessPolicy: map['defaultAccessPolicy'] == null ? null : pulumi.Output.create<CacheDefaultAccessPolicy>(CacheDefaultAccessPolicy.fromMap((map['defaultAccessPolicy'] as Map).cast<String, dynamic>())),
      directoryActiveDirectory: map['directoryActiveDirectory'] == null ? null : pulumi.Output.create<CacheDirectoryActiveDirectory>(CacheDirectoryActiveDirectory.fromMap((map['directoryActiveDirectory'] as Map).cast<String, dynamic>())),
      directoryFlatFile: map['directoryFlatFile'] == null ? null : pulumi.Output.create<CacheDirectoryFlatFile>(CacheDirectoryFlatFile.fromMap((map['directoryFlatFile'] as Map).cast<String, dynamic>())),
      directoryLdap: map['directoryLdap'] == null ? null : pulumi.Output.create<CacheDirectoryLdap>(CacheDirectoryLdap.fromMap((map['directoryLdap'] as Map).cast<String, dynamic>())),
      dns: map['dns'] == null ? null : pulumi.Output.create<CacheDns>(CacheDns.fromMap((map['dns'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<CacheIdentity>(CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mountAddresses: map['mountAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['mountAddresses'] as List).cast<String>()),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ntpServer: map['ntpServer'] == null ? null : pulumi.Output.create<String>(map['ntpServer'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

