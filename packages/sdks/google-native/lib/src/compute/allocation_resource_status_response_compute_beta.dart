// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_resource_status_specific_skuallocation_response_compute_beta.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeBeta {
  /// Allocation Properties of this reservation.
  final pulumi.Input<AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta> specificSkuAllocation;

  /// Creates a new [AllocationResourceStatusResponseComputeBeta].
  /// [specificSkuAllocation] Allocation Properties of this reservation.
  AllocationResourceStatusResponseComputeBeta({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificSkuAllocation': pulumi.Input.mapInputValue<AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta, Map<String, dynamic>>(specificSkuAllocation, (value) => value.toMap()),
    };
  }

  factory AllocationResourceStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponseComputeBeta(
      specificSkuAllocation: (AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta.fromMap((map['specificSkuAllocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

