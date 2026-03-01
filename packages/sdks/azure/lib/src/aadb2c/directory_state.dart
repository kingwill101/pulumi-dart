// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Directory resources.
class DirectoryState {
  /// The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`.
  final pulumi.Input<String>? billingType;
  /// Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  final pulumi.Input<String>? countryCode;
  /// Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`.
  final pulumi.Input<String>? dataResidencyLocation;
  /// The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  final pulumi.Input<String>? displayName;
  /// Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created.
  final pulumi.Input<String>? domainName;
  /// The date from which the billing type took effect. May not be populated until after the first billing cycle.
  final pulumi.Input<String>? effectiveStartDate;
  /// The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the AAD B2C Directory.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Tenant ID for the AAD B2C tenant.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DirectoryState].
  /// [billingType] The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`.
  /// [countryCode] Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  /// [dataResidencyLocation] Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`.
  /// [displayName] The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created.
  /// [domainName] Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created.
  /// [effectiveStartDate] The date from which the billing type took effect. May not be populated until after the first billing cycle.
  /// [resourceGroupName] The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created.
  /// [skuName] Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information.
  /// [tags] A mapping of tags which should be assigned to the AAD B2C Directory.
  /// [tenantId] The Tenant ID for the AAD B2C tenant.
  DirectoryState({
    pulumi.Output<String>? billingType,
    pulumi.Output<String>? countryCode,
    pulumi.Output<String>? dataResidencyLocation,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? effectiveStartDate,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      countryCode = pulumi.Input.asOptionalInput<String>(countryCode),
      dataResidencyLocation = pulumi.Input.asOptionalInput<String>(dataResidencyLocation),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      effectiveStartDate = pulumi.Input.asOptionalInput<String>(effectiveStartDate),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': ?billingType,
      'countryCode': ?countryCode,
      'dataResidencyLocation': ?dataResidencyLocation,
      'displayName': ?displayName,
      'domainName': ?domainName,
      'effectiveStartDate': ?effectiveStartDate,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory DirectoryState.fromMap(Map<String, dynamic> map) {
    return DirectoryState(
      billingType: map['billingType'] == null ? null : pulumi.Output.create<String>(map['billingType'] as String),
      countryCode: map['countryCode'] == null ? null : pulumi.Output.create<String>(map['countryCode'] as String),
      dataResidencyLocation: map['dataResidencyLocation'] == null ? null : pulumi.Output.create<String>(map['dataResidencyLocation'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      effectiveStartDate: map['effectiveStartDate'] == null ? null : pulumi.Output.create<String>(map['effectiveStartDate'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

