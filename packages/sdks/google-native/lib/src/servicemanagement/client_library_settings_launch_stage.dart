/// Launch stage of this version of the API.
enum ClientLibrarySettingsLaunchStage {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const ClientLibrarySettingsLaunchStage(this.wireValue);
  final String wireValue;

  static ClientLibrarySettingsLaunchStage fromValue(String value) {
    for (final item in ClientLibrarySettingsLaunchStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientLibrarySettingsLaunchStage value: $value');
  }
}

