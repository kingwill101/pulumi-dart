// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InternalRangeAllocationOptions {
  /// Optional. Sets the strategy used to automatically find a free range of a size given by prefixLength. Can be set only when trying to create a reservation that automatically finds the free range to reserve.
  /// Possible values are: `RANDOM`, `FIRST_AVAILABLE`, `RANDOM_FIRST_N_AVAILABLE`, `FIRST_SMALLEST_FITTING`.
  final pulumi.Input<String>? allocationStrategy;

  /// Must be set when allocation_strategy is RANDOM_FIRST_N_AVAILABLE, otherwise must remain unset. Defines the size of the set of free ranges from which RANDOM_FIRST_N_AVAILABLE strategy randomy selects one,
  /// in other words it sets the N in the RANDOM_FIRST_N_AVAILABLE.
  final pulumi.Input<int>? firstAvailableRangesLookupSize;

  /// Creates a new [InternalRangeAllocationOptions].
  /// [allocationStrategy] Optional. Sets the strategy used to automatically find a free range of a size given by prefixLength. Can be set only when trying to create a reservation that automatically finds the free range to reserve.
  /// [firstAvailableRangesLookupSize] Must be set when allocation_strategy is RANDOM_FIRST_N_AVAILABLE, otherwise must remain unset. Defines the size of the set of free ranges from which RANDOM_FIRST_N_AVAILABLE strategy randomy selects one,
  InternalRangeAllocationOptions({
    this.allocationStrategy,
    this.firstAvailableRangesLookupSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'firstAvailableRangesLookupSize': ?firstAvailableRangesLookupSize,
    };
  }

  factory InternalRangeAllocationOptions.fromMap(Map<String, dynamic> map) {
    return InternalRangeAllocationOptions(
      allocationStrategy: (() {
        final guardedValue = map['allocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firstAvailableRangesLookupSize: (() {
        final guardedValue = map['firstAvailableRangesLookupSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
