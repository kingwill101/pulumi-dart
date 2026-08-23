// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_resource_status_specific_skuallocation_response.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponse {
  /// Allocation Properties of this reservation.
  final pulumi.Input<AllocationResourceStatusSpecificSKUAllocationResponse> specificSkuAllocation;

  /// Creates a new [AllocationResourceStatusResponse].
  /// [specificSkuAllocation] Allocation Properties of this reservation.
  const AllocationResourceStatusResponse({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificSkuAllocation': pulumi.Input.mapInputValue<AllocationResourceStatusSpecificSKUAllocationResponse, Map<String, dynamic>>(specificSkuAllocation, (value) => value.toMap()),
    };
  }

  factory AllocationResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponse(
      specificSkuAllocation: pulumi.Input.fromValue(AllocationResourceStatusSpecificSKUAllocationResponse.fromMap((map['specificSkuAllocation']! as Map).cast<String, dynamic>())),
    );
  }
}
