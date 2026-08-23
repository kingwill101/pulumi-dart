/// The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob` requests to switch between the states `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`, `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably terminate the job if it hasn't already reached a terminal state. This field has no effect on `CreateJob` requests.
enum JobRequestedState {
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

  const JobRequestedState(this.wireValue);
  final String wireValue;

  static JobRequestedState fromValue(String value) {
    for (final item in JobRequestedState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobRequestedState value: $value');
  }
}
