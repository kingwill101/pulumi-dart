/// Required. The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
enum PipelineState {
  stateUnspecified("STATE_UNSPECIFIED"),
  stateResuming("STATE_RESUMING"),
  stateActive("STATE_ACTIVE"),
  stateStopping("STATE_STOPPING"),
  stateArchived("STATE_ARCHIVED"),
  statePaused("STATE_PAUSED");

  const PipelineState(this.wireValue);
  final String wireValue;

  static PipelineState fromValue(String value) {
    for (final item in PipelineState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineState value: $value');
  }
}
