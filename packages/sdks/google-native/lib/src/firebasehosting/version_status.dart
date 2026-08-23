/// The deploy status of the version. For a successful deploy, call [`CreateVersion`](sites.versions/create) to make a new version (`CREATED` status), [upload all desired files](sites.versions/populateFiles) to the version, then [update](sites.versions/patch) the version to the `FINALIZED` status. Note that if you leave the version in the `CREATED` state for more than 12 hours, the system will automatically mark the version as `ABANDONED`. You can also change the status of a version to `DELETED` by calling [`DeleteVersion`](sites.versions/delete).
enum VersionStatus {
  versionStatusUnspecified("VERSION_STATUS_UNSPECIFIED"),
  created("CREATED"),
  finalized("FINALIZED"),
  deleted("DELETED"),
  abandoned("ABANDONED"),
  expired("EXPIRED"),
  cloning("CLONING");

  const VersionStatus(this.wireValue);
  final String wireValue;

  static VersionStatus fromValue(String value) {
    for (final item in VersionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionStatus value: $value');
  }
}
