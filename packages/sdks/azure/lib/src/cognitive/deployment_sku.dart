// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentSku {
  /// Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to `1` which means that the limitation is `1000` tokens per minute. If the resources SKU supports scale in/out then the capacity field should be included in the resources' configuration. If the scale in/out is not supported by the resources SKU then this field can be safely omitted. For more information about TPM please see the [product documentation](https://learn.microsoft.com/azure/ai-services/openai/how-to/quota?tabs=rest).
  final pulumi.Input<int>? capacity;

  /// If the service has different generations of hardware, for the same SKU, then that can be captured here. Changing this forces a new resource to be created.
  final pulumi.Input<String>? family;

  /// The name of the SKU. Possible values include `Standard`, `DataZoneBatch`, `DataZoneStandard`, `DataZoneProvisionedManaged`, `GlobalBatch`, `GlobalProvisionedManaged`, `GlobalStandard`, and `ProvisionedManaged`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `DataZoneProvisionedManaged`, `GlobalProvisionedManaged`, and `ProvisionedManaged` are purchased on-demand at an hourly basis based on the number of deployed PTUs, with substantial term discount available via the purchase of Azure Reservations. Currently, this step cannot be completed using Terraform. For more details, please refer to the [provisioned throughput onboarding documentation](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/provisioned-throughput-onboarding).
  final pulumi.Input<String> name;

  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. Changing this forces a new resource to be created.
  final pulumi.Input<String>? size;

  /// Possible values are `Free`, `Basic`, `Standard`, `Premium`, `Enterprise`. This property is required only when multiple tiers are available with the SKU name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;

  /// Creates a new [DeploymentSku].
  /// [capacity] Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to `1` which means that the limitation is `1000` tokens per minute. If the resources SKU supports scale in/out then the capacity field should be included in the resources' configuration. If the scale in/out is not supported by the resources SKU then this field can be safely omitted. For more information about TPM please see the [product documentation](https://learn.microsoft.com/azure/ai-services/openai/how-to/quota?tabs=rest).
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here. Changing this forces a new resource to be created.
  /// [name] The name of the SKU. Possible values include `Standard`, `DataZoneBatch`, `DataZoneStandard`, `DataZoneProvisionedManaged`, `GlobalBatch`, `GlobalProvisionedManaged`, `GlobalStandard`, and `ProvisionedManaged`. Changing this forces a new resource to be created.
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. Changing this forces a new resource to be created.
  /// [tier] Possible values are `Free`, `Basic`, `Standard`, `Premium`, `Enterprise`. This property is required only when multiple tiers are available with the SKU name. Changing this forces a new resource to be created.
  DeploymentSku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory DeploymentSku.fromMap(Map<String, dynamic> map) {
    return DeploymentSku(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
