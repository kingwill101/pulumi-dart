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
    pulumi.Output<List<String>>? adminObjectIds,
    pulumi.Output<String>? hsmUri,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ManagedHardwareSecurityModuleNetworkAcls>? networkAcls,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<bool>? purgeProtectionEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? securityDomainEncryptedData,
    pulumi.Output<List<String>>? securityDomainKeyVaultCertificateIds,
    pulumi.Output<int>? securityDomainQuorum,
    pulumi.Output<String>? skuName,
    pulumi.Output<int>? softDeleteRetentionDays,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      adminObjectIds = pulumi.Input.asOptionalInput<List<String>>(adminObjectIds),
      hsmUri = pulumi.Input.asOptionalInput<String>(hsmUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAcls = pulumi.Input.asOptionalInput<ManagedHardwareSecurityModuleNetworkAcls>(networkAcls),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      purgeProtectionEnabled = pulumi.Input.asOptionalInput<bool>(purgeProtectionEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      securityDomainEncryptedData = pulumi.Input.asOptionalInput<String>(securityDomainEncryptedData),
      securityDomainKeyVaultCertificateIds = pulumi.Input.asOptionalInput<List<String>>(securityDomainKeyVaultCertificateIds),
      securityDomainQuorum = pulumi.Input.asOptionalInput<int>(securityDomainQuorum),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      softDeleteRetentionDays = pulumi.Input.asOptionalInput<int>(softDeleteRetentionDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      adminObjectIds: map['adminObjectIds'] == null ? null : pulumi.Output.create<List<String>>((map['adminObjectIds'] as List).cast<String>()),
      hsmUri: map['hsmUri'] == null ? null : pulumi.Output.create<String>(map['hsmUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAcls: map['networkAcls'] == null ? null : pulumi.Output.create<ManagedHardwareSecurityModuleNetworkAcls>(ManagedHardwareSecurityModuleNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      purgeProtectionEnabled: map['purgeProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['purgeProtectionEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityDomainEncryptedData: map['securityDomainEncryptedData'] == null ? null : pulumi.Output.create<String>(map['securityDomainEncryptedData'] as String),
      securityDomainKeyVaultCertificateIds: map['securityDomainKeyVaultCertificateIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityDomainKeyVaultCertificateIds'] as List).cast<String>()),
      securityDomainQuorum: map['securityDomainQuorum'] == null ? null : pulumi.Output.create<int>(map['securityDomainQuorum'] as int),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      softDeleteRetentionDays: map['softDeleteRetentionDays'] == null ? null : pulumi.Output.create<int>(map['softDeleteRetentionDays'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

