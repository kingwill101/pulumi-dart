/// Behavior for the post startup script.
enum RuntimeSoftwareConfigPostStartupScriptBehavior {
  postStartupScriptBehaviorUnspecified("POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED"),
  runEveryStart("RUN_EVERY_START"),
  downloadAndRunEveryStart("DOWNLOAD_AND_RUN_EVERY_START");

  const RuntimeSoftwareConfigPostStartupScriptBehavior(this.wireValue);
  final String wireValue;

  static RuntimeSoftwareConfigPostStartupScriptBehavior fromValue(String value) {
    for (final item in RuntimeSoftwareConfigPostStartupScriptBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeSoftwareConfigPostStartupScriptBehavior value: $value');
  }
}
