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
  final pulumi.Input<bool?>? automaticallyRotateKeyToLatestEnabled;
  /// The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `21623`, `43246` and `86491` sizes are restricted to read only resources.
  final pulumi.Input<int?>? cacheSizeInGb;
  /// A `defaultAccessPolicy` block as defined below.
  final pulumi.Input<CacheDefaultAccessPolicy?>? defaultAccessPolicy;
  /// A `directoryActiveDirectory` block as defined below.
  final pulumi.Input<CacheDirectoryActiveDirectory?>? directoryActiveDirectory;
  /// A `directoryFlatFile` block as defined below.
  final pulumi.Input<CacheDirectoryFlatFile?>? directoryFlatFile;
  /// A `directoryLdap` block as defined below.
  ///
  /// &gt; **Note:** Only one of `directoryActiveDirectory`, `directoryFlatFile` and `directoryLdap` can be set.
  final pulumi.Input<CacheDirectoryLdap?>? directoryLdap;
  /// A `dns` block as defined below.
  final pulumi.Input<CacheDns?>? dns;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<CacheIdentity?>? identity;
  /// The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache.
  final pulumi.Input<String?>? keyVaultKeyId;
  /// Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// A list of IP Addresses where the HPC Cache can be mounted.
  final pulumi.Input<List<String>?>? mountAddresses;
  /// The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`.
  final pulumi.Input<int?>? mtu;
  /// The name of the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`.
  final pulumi.Input<String?>? ntpServer;
  /// The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The read-only SKUs have restricted cache sizes. `Standard_L4_5G` must be set to `21623`. `Standard_L9G` to `43246` and `Standard_L16G` to `86491`.
  final pulumi.Input<String?>? skuName;
  /// The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? subnetId;
  /// A mapping of tags to assign to the HPC Cache.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CacheState].
  /// [automaticallyRotateKeyToLatestEnabled] Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version.
  /// [cacheSizeInGb] The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created.
  /// [defaultAccessPolicy] A `defaultAccessPolicy` block as defined below.
  /// [directoryActiveDirectory] A `directoryActiveDirectory` block as defined below.
  /// [directoryFlatFile] A `directoryFlatFile` block as defined below.
  /// [directoryLdap] A `directoryLdap` block as defined below.
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
  const CacheState({
    this.automaticallyRotateKeyToLatestEnabled,
    this.cacheSizeInGb,
    this.defaultAccessPolicy,
    this.directoryActiveDirectory,
    this.directoryFlatFile,
    this.directoryLdap,
    this.dns,
    this.identity,
    this.keyVaultKeyId,
    this.location,
    this.mountAddresses,
    this.mtu,
    this.name,
    this.ntpServer,
    this.resourceGroupName,
    this.skuName,
    this.subnetId,
    this.tags,
  });

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
      automaticallyRotateKeyToLatestEnabled: (() { final guardedValue = map['automaticallyRotateKeyToLatestEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheSizeInGb: (() { final guardedValue = map['cacheSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      defaultAccessPolicy: (() { final guardedValue = map['defaultAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDefaultAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directoryActiveDirectory: (() { final guardedValue = map['directoryActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDirectoryActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directoryFlatFile: (() { final guardedValue = map['directoryFlatFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDirectoryFlatFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directoryLdap: (() { final guardedValue = map['directoryLdap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDirectoryLdap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountAddresses: (() { final guardedValue = map['mountAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ntpServer: (() { final guardedValue = map['ntpServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
