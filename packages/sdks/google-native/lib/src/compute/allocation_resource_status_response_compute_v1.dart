// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_resource_status_specific_skuallocation_response_compute_v1.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeV1 {
  /// Allocation Properties of this reservation.
  final pulumi.Input<AllocationResourceStatusSpecificSKUAllocationResponseComputeV1> specificSkuAllocation;

  /// Creates a new [AllocationResourceStatusResponseComputeV1].
  /// [specificSkuAllocation] Allocation Properties of this reservation.
  const AllocationResourceStatusResponseComputeV1({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificSkuAllocation': pulumi.Input.mapInputValue<AllocationResourceStatusSpecificSKUAllocationResponseComputeV1, Map<String, dynamic>>(specificSkuAllocation, (value) => value.toMap()),
    };
  }

  factory AllocationResourceStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponseComputeV1(
      specificSkuAllocation: pulumi.Input.fromValue(AllocationResourceStatusSpecificSKUAllocationResponseComputeV1.fromMap((map['specificSkuAllocation']! as Map).cast<String, dynamic>())),
    );
  }
}

