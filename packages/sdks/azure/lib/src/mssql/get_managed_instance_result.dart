// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_instance_identity.dart';

/// Result data returned by getManagedInstance.
class GetManagedInstanceResult {
  /// The administrator login name for the SQL Managed Instance.
  final String administratorLogin;
  /// Specifies how the SQL Managed Instance will be collated.
  final String collation;
  final String customerManagedKeyId;
  /// The Dns Zone where the SQL Managed Instance is located.
  final String dnsZone;
  /// The ID of the SQL Managed Instance which shares the DNS zone.
  final String dnsZonePartnerId;
  /// The fully qualified domain name of the Azure Managed SQL Instance.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetManagedInstanceIdentity> identities;
  /// What type of license the SQL Managed Instance uses.
  final String licenseType;
  /// Specifies the supported Azure location where the resource exists.
  final String location;
  /// The Minimum TLS Version.
  final String minimumTlsVersion;
  final String name;
  /// Specifies how the SQL Managed Instance will be accessed.
  final String proxyOverride;
  /// Whether the public data endpoint is enabled.
  final bool publicDataEndpointEnabled;
  final String resourceGroupName;
  /// Specifies the SKU Name of the SQL Managed Instance.
  final String skuName;
  /// Specifies the storage account type used to store backups for this database.
  final String storageAccountType;
  /// Maximum storage space allocated for the SQL Managed Instance.
  final int storageSizeInGb;
  /// The subnet resource ID that the SQL Managed Instance is associated with.
  final String subnetId;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The TimeZone ID that the SQL Managed Instance is running in.
  final String timezoneId;
  /// Number of cores that are assigned to the SQL Managed Instance.
  final int vcores;

  /// Creates a new [GetManagedInstanceResult].
  /// [administratorLogin] The administrator login name for the SQL Managed Instance.
  /// [collation] Specifies how the SQL Managed Instance will be collated.
  /// [customerManagedKeyId] Required.
  /// [dnsZone] The Dns Zone where the SQL Managed Instance is located.
  /// [dnsZonePartnerId] The ID of the SQL Managed Instance which shares the DNS zone.
  /// [fqdn] The fully qualified domain name of the Azure Managed SQL Instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [licenseType] What type of license the SQL Managed Instance uses.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [minimumTlsVersion] The Minimum TLS Version.
  /// [name] Required.
  /// [proxyOverride] Specifies how the SQL Managed Instance will be accessed.
  /// [publicDataEndpointEnabled] Whether the public data endpoint is enabled.
  /// [resourceGroupName] Required.
  /// [skuName] Specifies the SKU Name of the SQL Managed Instance.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database.
  /// [storageSizeInGb] Maximum storage space allocated for the SQL Managed Instance.
  /// [subnetId] The subnet resource ID that the SQL Managed Instance is associated with.
  /// [tags] A mapping of tags assigned to the resource.
  /// [timezoneId] The TimeZone ID that the SQL Managed Instance is running in.
  /// [vcores] Number of cores that are assigned to the SQL Managed Instance.
  GetManagedInstanceResult({
    required this.administratorLogin,
    required this.collation,
    required this.customerManagedKeyId,
    required this.dnsZone,
    required this.dnsZonePartnerId,
    required this.fqdn,
    required this.id,
    required this.identities,
    required this.licenseType,
    required this.location,
    required this.minimumTlsVersion,
    required this.name,
    required this.proxyOverride,
    required this.publicDataEndpointEnabled,
    required this.resourceGroupName,
    required this.skuName,
    required this.storageAccountType,
    required this.storageSizeInGb,
    required this.subnetId,
    required this.tags,
    required this.timezoneId,
    required this.vcores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'collation': collation,
      'customerManagedKeyId': customerManagedKeyId,
      'dnsZone': dnsZone,
      'dnsZonePartnerId': dnsZonePartnerId,
      'fqdn': fqdn,
      'id': id,
      'identities': pulumi.Input.encodeList<GetManagedInstanceIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'licenseType': licenseType,
      'location': location,
      'minimumTlsVersion': minimumTlsVersion,
      'name': name,
      'proxyOverride': proxyOverride,
      'publicDataEndpointEnabled': publicDataEndpointEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'storageAccountType': storageAccountType,
      'storageSizeInGb': storageSizeInGb,
      'subnetId': subnetId,
      'tags': tags,
      'timezoneId': timezoneId,
      'vcores': vcores,
    };
  }

  factory GetManagedInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceResult(
      administratorLogin: map['administratorLogin'] as String,
      collation: map['collation'] as String,
      customerManagedKeyId: map['customerManagedKeyId'] as String,
      dnsZone: map['dnsZone'] as String,
      dnsZonePartnerId: map['dnsZonePartnerId'] as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetManagedInstanceIdentity>(map['identities'], (value) => GetManagedInstanceIdentity.fromMap((value as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] as String,
      location: map['location'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      name: map['name'] as String,
      proxyOverride: map['proxyOverride'] as String,
      publicDataEndpointEnabled: map['publicDataEndpointEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      storageAccountType: map['storageAccountType'] as String,
      storageSizeInGb: map['storageSizeInGb'] as int,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timezoneId: map['timezoneId'] as String,
      vcores: map['vcores'] as int,
    );
  }
}

