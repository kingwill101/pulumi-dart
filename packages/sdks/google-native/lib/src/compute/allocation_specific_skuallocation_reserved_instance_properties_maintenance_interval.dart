/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval(this.value);
  final String value;

  static AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval fromValue(String value) {
    for (final item in AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval value: $value');
  }
}

