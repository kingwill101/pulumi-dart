// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEngineVersions.
class GetEngineVersionsResult {
  /// Version of Kubernetes the service deploys by default.
  final String? defaultClusterVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The latest version available in the given zone for use with master instances.
  final String? latestMasterVersion;
  /// The latest version available in the given zone for use with node instances.
  final String? latestNodeVersion;
  final String? location;
  final String? project;
  /// A map from a release channel name to the channel's default version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String>? releaseChannelDefaultVersion;
  /// A map from a release channel name to the channel's latest version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String>? releaseChannelLatestVersion;
  /// A map from a release channel name to the channel's auto upgrade target version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String>? releaseChannelUpgradeTargetVersion;
  /// A list of versions available in the given zone for use with master instances.
  final List<String>? validMasterVersions;
  /// A list of versions available in the given zone for use with node instances.
  final List<String>? validNodeVersions;
  final String? versionPrefix;

  /// Creates a new [GetEngineVersionsResult].
  /// [defaultClusterVersion] Version of Kubernetes the service deploys by default.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestMasterVersion] The latest version available in the given zone for use with master instances.
  /// [latestNodeVersion] The latest version available in the given zone for use with node instances.
  /// [location] Optional.
  /// [project] Optional.
  /// [releaseChannelDefaultVersion] A map from a release channel name to the channel's default version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  /// [releaseChannelLatestVersion] A map from a release channel name to the channel's latest version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  /// [releaseChannelUpgradeTargetVersion] A map from a release channel name to the channel's auto upgrade target version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  /// [validMasterVersions] A list of versions available in the given zone for use with master instances.
  /// [validNodeVersions] A list of versions available in the given zone for use with node instances.
  /// [versionPrefix] Optional.
  const GetEngineVersionsResult({
    this.defaultClusterVersion,
    this.id,
    this.latestMasterVersion,
    this.latestNodeVersion,
    this.location,
    this.project,
    this.releaseChannelDefaultVersion,
    this.releaseChannelLatestVersion,
    this.releaseChannelUpgradeTargetVersion,
    this.validMasterVersions,
    this.validNodeVersions,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterVersion': ?defaultClusterVersion,
      'id': ?id,
      'latestMasterVersion': ?latestMasterVersion,
      'latestNodeVersion': ?latestNodeVersion,
      'location': ?location,
      'project': ?project,
      'releaseChannelDefaultVersion': ?releaseChannelDefaultVersion,
      'releaseChannelLatestVersion': ?releaseChannelLatestVersion,
      'releaseChannelUpgradeTargetVersion': ?releaseChannelUpgradeTargetVersion,
      'validMasterVersions': ?validMasterVersions,
      'validNodeVersions': ?validNodeVersions,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetEngineVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionsResult(
      defaultClusterVersion: (() { final guardedValue = map['defaultClusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestMasterVersion: (() { final guardedValue = map['latestMasterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestNodeVersion: (() { final guardedValue = map['latestNodeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseChannelDefaultVersion: (() { final guardedValue = map['releaseChannelDefaultVersion']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      releaseChannelLatestVersion: (() { final guardedValue = map['releaseChannelLatestVersion']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      releaseChannelUpgradeTargetVersion: (() { final guardedValue = map['releaseChannelUpgradeTargetVersion']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      validMasterVersions: (() { final guardedValue = map['validMasterVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validNodeVersions: (() { final guardedValue = map['validNodeVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
