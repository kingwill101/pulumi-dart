/// The type of the security offering.
enum OfferingType {
  cspmMonitorAws("CspmMonitorAws"),
  defenderForContainersAws("DefenderForContainersAws"),
  defenderForServersAws("DefenderForServersAws"),
  defenderForDatabasesAws("DefenderForDatabasesAws"),
  cspmMonitorGcp("CspmMonitorGcp"),
  cspmMonitorGithub("CspmMonitorGithub"),
  cspmMonitorAzureDevOps("CspmMonitorAzureDevOps"),
  defenderForServersGcp("DefenderForServersGcp"),
  defenderForContainersGcp("DefenderForContainersGcp"),
  defenderForDatabasesGcp("DefenderForDatabasesGcp"),
  defenderCspmAws("DefenderCspmAws"),
  defenderCspmGcp("DefenderCspmGcp"),
  cspmMonitorGitLab("CspmMonitorGitLab"),
  cspmMonitorDockerHub("CspmMonitorDockerHub"),
  defenderForContainersDockerHub("DefenderForContainersDockerHub"),
  defenderCspmDockerHub("DefenderCspmDockerHub"),
  cspmMonitorJFrog("CspmMonitorJFrog"),
  defenderForContainersJFrog("DefenderForContainersJFrog"),
  defenderCspmJFrog("DefenderCspmJFrog");

  const OfferingType(this.wireValue);
  final String wireValue;

  static OfferingType fromValue(String value) {
    for (final item in OfferingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OfferingType value: $value');
  }
}
