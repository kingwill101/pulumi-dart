/// The current migration job state.
enum MigrationJobStateDatamigrationV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  maintenance("MAINTENANCE"),
  draft("DRAFT"),
  creating("CREATING"),
  notStarted("NOT_STARTED"),
  running("RUNNING"),
  failed("FAILED"),
  completed("COMPLETED"),
  deleting("DELETING"),
  stopping("STOPPING"),
  stopped("STOPPED"),
  deleted("DELETED"),
  updating("UPDATING"),
  starting("STARTING"),
  restarting("RESTARTING"),
  resuming("RESUMING");

  const MigrationJobStateDatamigrationV1beta1(this.wireValue);
  final String wireValue;

  static MigrationJobStateDatamigrationV1beta1 fromValue(String value) {
    for (final item in MigrationJobStateDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobStateDatamigrationV1beta1 value: $value');
  }
}
