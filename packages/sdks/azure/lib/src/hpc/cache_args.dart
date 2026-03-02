// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_default_access_policy.dart';
import 'cache_directory_active_directory.dart';
import 'cache_directory_flat_file.dart';
import 'cache_directory_ldap.dart';
import 'cache_dns.dart';
import 'cache_identity.dart';

/// {@template pulumi_hpc_cache_cache_args_doc}
/// The set of arguments for Cache.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_cache_args_doc}
class CacheArgs {
  /// Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version.
  final pulumi.Input<bool>? automaticallyRotateKeyToLatestEnabled;
  /// The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `21623`, `43246` and `86491` sizes are restricted to read only resources.
  final pulumi.Input<int> cacheSizeInGb;
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
  /// The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  final pulumi.Input<int>? mtu;
  /// The name of the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  final pulumi.Input<String>? ntpServer;
  /// The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The read-only SKUs have restricted cache sizes. `Standard_L4_5G` must be set to `21623`. `Standard_L9G` to `43246` and `Standard_L16G` to `86491`.
  final pulumi.Input<String> skuName;
  /// The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the HPC Cache.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CacheArgs].
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
  /// [mtu] The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  /// [name] The name of the HPC Cache. Changing this forces a new resource to be created.
  /// [ntpServer] The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  /// [resourceGroupName] The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  /// [skuName] The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the HPC Cache.
  CacheArgs({
    this.automaticallyRotateKeyToLatestEnabled,
    required this.cacheSizeInGb,
    this.defaultAccessPolicy,
    this.directoryActiveDirectory,
    this.directoryFlatFile,
    this.directoryLdap,
    this.dns,
    this.identity,
    this.keyVaultKeyId,
    this.location,
    this.mtu,
    this.name,
    this.ntpServer,
    required this.resourceGroupName,
    required this.skuName,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyRotateKeyToLatestEnabled': ?automaticallyRotateKeyToLatestEnabled,
      'cacheSizeInGb': cacheSizeInGb,
      'defaultAccessPolicy': ?pulumi.Input.mapOptionalInputValue<CacheDefaultAccessPolicy, Map<String, dynamic>>(defaultAccessPolicy, (value) => value.toMap()),
      'directoryActiveDirectory': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryActiveDirectory, Map<String, dynamic>>(directoryActiveDirectory, (value) => value.toMap()),
      'directoryFlatFile': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryFlatFile, Map<String, dynamic>>(directoryFlatFile, (value) => value.toMap()),
      'directoryLdap': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryLdap, Map<String, dynamic>>(directoryLdap, (value) => value.toMap()),
      'dns': ?pulumi.Input.mapOptionalInputValue<CacheDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<CacheIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultKeyId': ?keyVaultKeyId,
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'ntpServer': ?ntpServer,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory CacheArgs.fromMap(Map<String, dynamic> map) {
    return CacheArgs(
      automaticallyRotateKeyToLatestEnabled: map['automaticallyRotateKeyToLatestEnabled'] == null ? null : (map['automaticallyRotateKeyToLatestEnabled'] as bool).input(),
      cacheSizeInGb: (map['cacheSizeInGb'] as int).input(),
      defaultAccessPolicy: map['defaultAccessPolicy'] == null ? null : (CacheDefaultAccessPolicy.fromMap((map['defaultAccessPolicy'] as Map).cast<String, dynamic>())).input(),
      directoryActiveDirectory: map['directoryActiveDirectory'] == null ? null : (CacheDirectoryActiveDirectory.fromMap((map['directoryActiveDirectory'] as Map).cast<String, dynamic>())).input(),
      directoryFlatFile: map['directoryFlatFile'] == null ? null : (CacheDirectoryFlatFile.fromMap((map['directoryFlatFile'] as Map).cast<String, dynamic>())).input(),
      directoryLdap: map['directoryLdap'] == null ? null : (CacheDirectoryLdap.fromMap((map['directoryLdap'] as Map).cast<String, dynamic>())).input(),
      dns: map['dns'] == null ? null : (CacheDns.fromMap((map['dns'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ntpServer: map['ntpServer'] == null ? null : (map['ntpServer'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skuName: (map['skuName'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

