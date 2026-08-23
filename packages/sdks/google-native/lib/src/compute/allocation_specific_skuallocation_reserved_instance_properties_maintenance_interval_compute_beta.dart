/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta(this.wireValue);
  final String wireValue;

  static AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta value: $value');
  }
}
