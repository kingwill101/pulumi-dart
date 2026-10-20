import 'package:pulumi/pulumi.dart' as pulumi;

/// The current serving state of the Cloud SQL instance.
enum InstanceState implements pulumi.PulumiEnum<String> {
  sqlInstanceStateUnspecified("SQL_INSTANCE_STATE_UNSPECIFIED"),
  runnable("RUNNABLE"),
  suspended("SUSPENDED"),
  pendingDelete("PENDING_DELETE"),
  pendingCreate("PENDING_CREATE"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  onlineMaintenance("ONLINE_MAINTENANCE");

  const InstanceState(this.wireValue);
  @override
  final String wireValue;

  static InstanceState fromValue(String value) {
    for (final item in InstanceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceState value: $value');
  }
}
