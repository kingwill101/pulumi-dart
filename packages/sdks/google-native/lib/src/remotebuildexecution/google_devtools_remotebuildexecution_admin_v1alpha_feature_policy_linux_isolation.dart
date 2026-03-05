/// linux_isolation allows overriding the docker runtime used for containers started on Linux.
enum GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation {
  linuxIsolationUnspecified("LINUX_ISOLATION_UNSPECIFIED"),
  gvisor("GVISOR"),
  off("OFF");

  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation(this.wireValue);
  final String wireValue;

  static GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation fromValue(String value) {
    for (final item in GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation value: $value');
  }
}

