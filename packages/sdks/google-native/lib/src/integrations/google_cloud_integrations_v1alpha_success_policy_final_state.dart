/// State to which the execution snapshot status will be set if the task succeeds.
enum GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState {
  finalStateUnspecified("FINAL_STATE_UNSPECIFIED"),
  succeeded("SUCCEEDED"),
  suspended("SUSPENDED");

  const GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState value: $value',
    );
  }
}
