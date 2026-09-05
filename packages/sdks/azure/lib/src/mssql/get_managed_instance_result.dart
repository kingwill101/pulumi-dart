// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_instance_identity.dart';

/// Result data returned by getManagedInstance.
class GetManagedInstanceResult {
  /// The administrator login name for the SQL Managed Instance.
  final String? administratorLogin;
  /// Specifies how the SQL Managed Instance will be collated.
  final String? collation;
  final String? customerManagedKeyId;
  /// The Dns Zone where the SQL Managed Instance is located.
  final String? dnsZone;
  /// The ID of the SQL Managed Instance which shares the DNS zone.
  final String? dnsZonePartnerId;
  /// The fully qualified domain name of the Azure Managed SQL Instance.
  final String? fqdn;
  /// Whether the SQL Managed Instance is using the Next-gen General Purpose service tier
  final bool? generalPurposeV2Enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetManagedInstanceIdentity>? identities;
  /// What type of license the SQL Managed Instance uses.
  final String? licenseType;
  /// Specifies the supported Azure location where the resource exists.
  final String? location;
  /// The Minimum TLS Version.
  final String? minimumTlsVersion;
  final String? name;
  /// Specifies how the SQL Managed Instance will be accessed.
  final String? proxyOverride;
  /// Whether the public data endpoint is enabled.
  final bool? publicDataEndpointEnabled;
  final String? resourceGroupName;
  /// Specifies the SKU Name of the SQL Managed Instance.
  final String? skuName;
  /// Specifies the storage account type used to store backups for this database.
  final String? storageAccountType;
  /// Maximum storage space allocated for the SQL Managed Instance.
  final int? storageSizeInGb;
  /// The subnet resource ID that the SQL Managed Instance is associated with.
  final String? subnetId;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The TimeZone ID that the SQL Managed Instance is running in.
  final String? timezoneId;
  /// Number of cores that are assigned to the SQL Managed Instance.
  final int? vcores;

  /// Creates a new [GetManagedInstanceResult].
  /// [administratorLogin] The administrator login name for the SQL Managed Instance.
  /// [collation] Specifies how the SQL Managed Instance will be collated.
  /// [customerManagedKeyId] Optional.
  /// [dnsZone] The Dns Zone where the SQL Managed Instance is located.
  /// [dnsZonePartnerId] The ID of the SQL Managed Instance which shares the DNS zone.
  /// [fqdn] The fully qualified domain name of the Azure Managed SQL Instance.
  /// [generalPurposeV2Enabled] Whether the SQL Managed Instance is using the Next-gen General Purpose service tier
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [licenseType] What type of license the SQL Managed Instance uses.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [minimumTlsVersion] The Minimum TLS Version.
  /// [name] Optional.
  /// [proxyOverride] Specifies how the SQL Managed Instance will be accessed.
  /// [publicDataEndpointEnabled] Whether the public data endpoint is enabled.
  /// [resourceGroupName] Optional.
  /// [skuName] Specifies the SKU Name of the SQL Managed Instance.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database.
  /// [storageSizeInGb] Maximum storage space allocated for the SQL Managed Instance.
  /// [subnetId] The subnet resource ID that the SQL Managed Instance is associated with.
  /// [tags] A mapping of tags assigned to the resource.
  /// [timezoneId] The TimeZone ID that the SQL Managed Instance is running in.
  /// [vcores] Number of cores that are assigned to the SQL Managed Instance.
  const GetManagedInstanceResult({
    this.administratorLogin,
    this.collation,
    this.customerManagedKeyId,
    this.dnsZone,
    this.dnsZonePartnerId,
    this.fqdn,
    this.generalPurposeV2Enabled,
    this.id,
    this.identities,
    this.licenseType,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.proxyOverride,
    this.publicDataEndpointEnabled,
    this.resourceGroupName,
    this.skuName,
    this.storageAccountType,
    this.storageSizeInGb,
    this.subnetId,
    this.tags,
    this.timezoneId,
    this.vcores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'collation': ?collation,
      'customerManagedKeyId': ?customerManagedKeyId,
      'dnsZone': ?dnsZone,
      'dnsZonePartnerId': ?dnsZonePartnerId,
      'fqdn': ?fqdn,
      'generalPurposeV2Enabled': ?generalPurposeV2Enabled,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedInstanceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'licenseType': ?licenseType,
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'proxyOverride': ?proxyOverride,
      'publicDataEndpointEnabled': ?publicDataEndpointEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'storageAccountType': ?storageAccountType,
      'storageSizeInGb': ?storageSizeInGb,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'timezoneId': ?timezoneId,
      'vcores': ?vcores,
    };
  }

  factory GetManagedInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedKeyId: (() { final guardedValue = map['customerManagedKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZone: (() { final guardedValue = map['dnsZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZonePartnerId: (() { final guardedValue = map['dnsZonePartnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generalPurposeV2Enabled: (() { final guardedValue = map['generalPurposeV2Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedInstanceIdentity>(guardedValue, (value) => GetManagedInstanceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyOverride: (() { final guardedValue = map['proxyOverride']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDataEndpointEnabled: (() { final guardedValue = map['publicDataEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSizeInGb: (() { final guardedValue = map['storageSizeInGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timezoneId: (() { final guardedValue = map['timezoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcores: (() { final guardedValue = map['vcores']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
