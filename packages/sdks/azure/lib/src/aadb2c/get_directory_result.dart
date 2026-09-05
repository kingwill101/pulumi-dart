// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDirectory.
class GetDirectoryResult {
  /// The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`.
  final String? billingType;
  /// Location in which the B2C tenant is hosted and data resides. See [official docs](https://aka.ms/B2CDataResidenc) for more information.
  final String? dataResidencyLocation;
  final String? domainName;
  /// The date from which the billing type took effect. May not be populated until after the first billing cycle.
  final String? effectiveStartDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? resourceGroupName;
  /// Billing SKU for the B2C tenant. See [official docs](https://aka.ms/b2cBilling) for more information.
  final String? skuName;
  /// A mapping of tags assigned to the AAD B2C Directory.
  final Map<String, String>? tags;
  /// The Tenant ID for the AAD B2C tenant.
  final String? tenantId;

  /// Creates a new [GetDirectoryResult].
  /// [billingType] The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`.
  /// [dataResidencyLocation] Location in which the B2C tenant is hosted and data resides. See [official docs](https://aka.ms/B2CDataResidenc) for more information.
  /// [domainName] Optional.
  /// [effectiveStartDate] The date from which the billing type took effect. May not be populated until after the first billing cycle.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceGroupName] Optional.
  /// [skuName] Billing SKU for the B2C tenant. See [official docs](https://aka.ms/b2cBilling) for more information.
  /// [tags] A mapping of tags assigned to the AAD B2C Directory.
  /// [tenantId] The Tenant ID for the AAD B2C tenant.
  const GetDirectoryResult({
    this.billingType,
    this.dataResidencyLocation,
    this.domainName,
    this.effectiveStartDate,
    this.id,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': ?billingType,
      'dataResidencyLocation': ?dataResidencyLocation,
      'domainName': ?domainName,
      'effectiveStartDate': ?effectiveStartDate,
      'id': ?id,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryResult(
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataResidencyLocation: (() { final guardedValue = map['dataResidencyLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveStartDate: (() { final guardedValue = map['effectiveStartDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
