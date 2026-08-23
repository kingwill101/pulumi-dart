/// The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
enum AndroidInstrumentationTestOrchestratorOption {
  orchestratorOptionUnspecified("ORCHESTRATOR_OPTION_UNSPECIFIED"),
  useOrchestrator("USE_ORCHESTRATOR"),
  doNotUseOrchestrator("DO_NOT_USE_ORCHESTRATOR");

  const AndroidInstrumentationTestOrchestratorOption(this.wireValue);
  final String wireValue;

  static AndroidInstrumentationTestOrchestratorOption fromValue(String value) {
    for (final item in AndroidInstrumentationTestOrchestratorOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AndroidInstrumentationTestOrchestratorOption value: $value');
  }
}
