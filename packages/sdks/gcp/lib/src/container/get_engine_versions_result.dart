// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEngineVersions.
class GetEngineVersionsResult {
  /// Version of Kubernetes the service deploys by default.
  final String defaultClusterVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The latest version available in the given zone for use with master instances.
  final String latestMasterVersion;
  /// The latest version available in the given zone for use with node instances.
  final String latestNodeVersion;
  final String? location;
  final String? project;
  /// A map from a release channel name to the channel's default version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String> releaseChannelDefaultVersion;
  /// A map from a release channel name to the channel's latest version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String> releaseChannelLatestVersion;
  /// A map from a release channel name to the channel's auto upgrade target version. See the docs on [available release channel names](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.Channel_1) for more details.
  final Map<String, String> releaseChannelUpgradeTargetVersion;
  /// A list of versions available in the given zone for use with master instances.
  final List<String> validMasterVersions;
  /// A list of versions available in the given zone for use with node instances.
  final List<String> validNodeVersions;
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
    required this.defaultClusterVersion,
    required this.id,
    required this.latestMasterVersion,
    required this.latestNodeVersion,
    this.location,
    this.project,
    required this.releaseChannelDefaultVersion,
    required this.releaseChannelLatestVersion,
    required this.releaseChannelUpgradeTargetVersion,
    required this.validMasterVersions,
    required this.validNodeVersions,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterVersion': defaultClusterVersion,
      'id': id,
      'latestMasterVersion': latestMasterVersion,
      'latestNodeVersion': latestNodeVersion,
      'location': ?location,
      'project': ?project,
      'releaseChannelDefaultVersion': releaseChannelDefaultVersion,
      'releaseChannelLatestVersion': releaseChannelLatestVersion,
      'releaseChannelUpgradeTargetVersion': releaseChannelUpgradeTargetVersion,
      'validMasterVersions': validMasterVersions,
      'validNodeVersions': validNodeVersions,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetEngineVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionsResult(
      defaultClusterVersion: map['defaultClusterVersion'] as String,
      id: map['id'] as String,
      latestMasterVersion: map['latestMasterVersion'] as String,
      latestNodeVersion: map['latestNodeVersion'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseChannelDefaultVersion: (map['releaseChannelDefaultVersion'] as Map).cast<String, String>(),
      releaseChannelLatestVersion: (map['releaseChannelLatestVersion'] as Map).cast<String, String>(),
      releaseChannelUpgradeTargetVersion: (map['releaseChannelUpgradeTargetVersion'] as Map).cast<String, String>(),
      validMasterVersions: (map['validMasterVersions'] as List).cast<String>(),
      validNodeVersions: (map['validNodeVersions'] as List).cast<String>(),
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

