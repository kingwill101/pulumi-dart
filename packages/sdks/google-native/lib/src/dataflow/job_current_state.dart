/// The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
enum JobCurrentState {
  jobStateUnknown("JOB_STATE_UNKNOWN"),
  jobStateStopped("JOB_STATE_STOPPED"),
  jobStateRunning("JOB_STATE_RUNNING"),
  jobStateDone("JOB_STATE_DONE"),
  jobStateFailed("JOB_STATE_FAILED"),
  jobStateCancelled("JOB_STATE_CANCELLED"),
  jobStateUpdated("JOB_STATE_UPDATED"),
  jobStateDraining("JOB_STATE_DRAINING"),
  jobStateDrained("JOB_STATE_DRAINED"),
  jobStatePending("JOB_STATE_PENDING"),
  jobStateCancelling("JOB_STATE_CANCELLING"),
  jobStateQueued("JOB_STATE_QUEUED"),
  jobStateResourceCleaningUp("JOB_STATE_RESOURCE_CLEANING_UP");

  const JobCurrentState(this.wireValue);
  final String wireValue;

  static JobCurrentState fromValue(String value) {
    for (final item in JobCurrentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobCurrentState value: $value');
  }
}
