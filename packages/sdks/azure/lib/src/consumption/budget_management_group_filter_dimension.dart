// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetManagementGroupFilterDimension {
  /// The name of the column to use for the filter. The allowed values are `ChargeType`, `Frequency`, `InvoiceId`, `Meter`, `MeterCategory`, `MeterSubCategory`, `PartNumber`, `PricingModel`, `Product`, `ProductOrderId`, `ProductOrderName`, `PublisherType`, `ReservationId`, `ReservationName`, `ResourceGroupName`, `ResourceGuid`, `ResourceId`, `ResourceLocation`, `ResourceType`, `ServiceFamily`, `ServiceName`, `SubscriptionID`, `SubscriptionName`, `UnitOfMeasure`.
  final pulumi.Input<String> name;
  /// The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  final pulumi.Input<String>? operator;
  /// Specifies a list of values for the column.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetManagementGroupFilterDimension].
  /// [name] The name of the column to use for the filter. The allowed values are `ChargeType`, `Frequency`, `InvoiceId`, `Meter`, `MeterCategory`, `MeterSubCategory`, `PartNumber`, `PricingModel`, `Product`, `ProductOrderId`, `ProductOrderName`, `PublisherType`, `ReservationId`, `ReservationName`, `ResourceGroupName`, `ResourceGuid`, `ResourceId`, `ResourceLocation`, `ResourceType`, `ServiceFamily`, `ServiceName`, `SubscriptionID`, `SubscriptionName`, `UnitOfMeasure`.
  /// [operator] The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  /// [values] Specifies a list of values for the column.
  const BudgetManagementGroupFilterDimension({
    required this.name,
    this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': ?operator,
      'values': values,
    };
  }

  factory BudgetManagementGroupFilterDimension.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupFilterDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
