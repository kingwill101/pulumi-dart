/// How the import job will handle conflicts. For example, if the import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or was not previously imported. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/ for a thorough explanation of these resolution modes.
enum ConflictResolutionMode {
  valueFail("Fail"),
  valueSkip("Skip"),
  valueOverwriteIfDirty("OverwriteIfDirty"),
  valueOverwriteAlways("OverwriteAlways");

  const ConflictResolutionMode(this.value);
  final String value;

  static ConflictResolutionMode fromValue(String value) {
    for (final item in ConflictResolutionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConflictResolutionMode value: $value');
  }
}

