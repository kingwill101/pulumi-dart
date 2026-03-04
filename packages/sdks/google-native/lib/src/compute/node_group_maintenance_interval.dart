/// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
enum NodeGroupMaintenanceInterval {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const NodeGroupMaintenanceInterval(this.wireValue);
  final String wireValue;

  static NodeGroupMaintenanceInterval fromValue(String value) {
    for (final item in NodeGroupMaintenanceInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenanceInterval value: $value');
  }
}
