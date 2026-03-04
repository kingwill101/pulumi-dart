/// The current migration job state.
enum MigrationJobState {
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

  const MigrationJobState(this.wireValue);
  final String wireValue;

  static MigrationJobState fromValue(String value) {
    for (final item in MigrationJobState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobState value: $value');
  }
}
