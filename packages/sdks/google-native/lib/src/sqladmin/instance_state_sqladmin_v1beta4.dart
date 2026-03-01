/// The current serving state of the Cloud SQL instance.
enum InstanceStateSqladminV1beta4 {
  sqlInstanceStateUnspecified("SQL_INSTANCE_STATE_UNSPECIFIED"),
  runnable("RUNNABLE"),
  suspended("SUSPENDED"),
  pendingDelete("PENDING_DELETE"),
  pendingCreate("PENDING_CREATE"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  onlineMaintenance("ONLINE_MAINTENANCE");

  const InstanceStateSqladminV1beta4(this.value);
  final String value;

  static InstanceStateSqladminV1beta4 fromValue(String value) {
    for (final item in InstanceStateSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceStateSqladminV1beta4 value: $value');
  }
}

