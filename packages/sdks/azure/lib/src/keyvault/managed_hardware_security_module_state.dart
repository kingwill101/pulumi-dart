// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_network_acls.dart';

/// Input properties used for looking up and filtering ManagedHardwareSecurityModule resources.
class ManagedHardwareSecurityModuleState {
  /// Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? adminObjectIds;
  /// The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys.
  final pulumi.Input<String>? hsmUri;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_acls` block as defined below.
  final pulumi.Input<ManagedHardwareSecurityModuleNetworkAcls>? networkAcls;
  /// Whether traffic from public networks is permitted. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? purgeProtectionEnabled;
  /// The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// This attribute can be used for disaster recovery or when creating another Managed HSM that shares the same security domain.
  final pulumi.Input<String>? securityDomainEncryptedData;
  /// A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm)
  final pulumi.Input<List<String>>? securityDomainKeyVaultCertificateIds;
  /// Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when `security_domain_key_vault_certificate_ids` is specified. Valid values are between 2 and 10.
  final pulumi.Input<int>? securityDomainQuorum;
  /// The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is `Standard_B1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` days. Defaults to `90`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ManagedHardwareSecurityModuleState].
  /// [adminObjectIds] Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  /// [hsmUri] The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  /// [networkAcls] A `network_acls` block as defined below.
  /// [publicNetworkAccessEnabled] Whether traffic from public networks is permitted. Defaults to `true`.
  /// [purgeProtectionEnabled] Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  /// [securityDomainEncryptedData] This attribute can be used for disaster recovery or when creating another Managed HSM that shares the same security domain.
  /// [securityDomainKeyVaultCertificateIds] A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm)
  /// [securityDomainQuorum] Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when `security_domain_key_vault_certificate_ids` is specified. Valid values are between 2 and 10.
  /// [skuName] The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is `Standard_B1`. Changing this forces a new resource to be created.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` days. Defaults to `90`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tenantId] The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created.
  ManagedHardwareSecurityModuleState({
    this.adminObjectIds,
    this.hsmUri,
    this.location,
    this.name,
    this.networkAcls,
    this.publicNetworkAccessEnabled,
    this.purgeProtectionEnabled,
    this.resourceGroupName,
    this.securityDomainEncryptedData,
    this.securityDomainKeyVaultCertificateIds,
    this.securityDomainQuorum,
    this.skuName,
    this.softDeleteRetentionDays,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminObjectIds': ?adminObjectIds,
      'hsmUri': ?hsmUri,
      'location': ?location,
      'name': ?name,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<ManagedHardwareSecurityModuleNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'resourceGroupName': ?resourceGroupName,
      'securityDomainEncryptedData': ?securityDomainEncryptedData,
      'securityDomainKeyVaultCertificateIds': ?securityDomainKeyVaultCertificateIds,
      'securityDomainQuorum': ?securityDomainQuorum,
      'skuName': ?skuName,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedHardwareSecurityModuleState.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleState(
      adminObjectIds: (() { final guardedValue = map['adminObjectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hsmUri: (() { final guardedValue = map['hsmUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedHardwareSecurityModuleNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeProtectionEnabled: (() { final guardedValue = map['purgeProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityDomainEncryptedData: (() { final guardedValue = map['securityDomainEncryptedData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityDomainKeyVaultCertificateIds: (() { final guardedValue = map['securityDomainKeyVaultCertificateIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityDomainQuorum: (() { final guardedValue = map['securityDomainQuorum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleteRetentionDays: (() { final guardedValue = map['softDeleteRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

