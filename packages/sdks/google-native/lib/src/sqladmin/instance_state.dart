/// The current serving state of the Cloud SQL instance.
enum InstanceState {
  sqlInstanceStateUnspecified("SQL_INSTANCE_STATE_UNSPECIFIED"),
  runnable("RUNNABLE"),
  suspended("SUSPENDED"),
  pendingDelete("PENDING_DELETE"),
  pendingCreate("PENDING_CREATE"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  onlineMaintenance("ONLINE_MAINTENANCE");

  const InstanceState(this.value);
  final String value;

  static InstanceState fromValue(String value) {
    for (final item in InstanceState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceState value: $value');
  }
}

