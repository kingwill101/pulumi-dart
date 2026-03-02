// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseStatus {
  /// The version number of the application being deployed.
  final pulumi.Input<String>? appVersion;
  /// The name of the chart.
  final pulumi.Input<String>? chart;
  /// Name is the name of the release.
  final pulumi.Input<String>? name;
  /// Namespace is the kubernetes namespace of the release.
  final pulumi.Input<String>? namespace;
  /// Version is an int32 which represents the version of the release.
  final pulumi.Input<int>? revision;
  /// Status of the release.
  final pulumi.Input<String> status;
  /// A SemVer 2 conformant version string of the chart.
  final pulumi.Input<String>? version;

  /// Creates a new [ReleaseStatus].
  /// [appVersion] The version number of the application being deployed.
  /// [chart] The name of the chart.
  /// [name] Name is the name of the release.
  /// [namespace] Namespace is the kubernetes namespace of the release.
  /// [revision] Version is an int32 which represents the version of the release.
  /// [status] Status of the release.
  /// [version] A SemVer 2 conformant version string of the chart.
  ReleaseStatus({
    this.appVersion,
    this.chart,
    this.name,
    this.namespace,
    this.revision,
    required this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appVersion': ?appVersion,
      'chart': ?chart,
      'name': ?name,
      'namespace': ?namespace,
      'revision': ?revision,
      'status': status,
      'version': ?version,
    };
  }

  factory ReleaseStatus.fromMap(Map<String, dynamic> map) {
    return ReleaseStatus(
      appVersion: map['appVersion'] == null ? null : (map['appVersion']! as String).input(),
      chart: map['chart'] == null ? null : (map['chart']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      revision: map['revision'] == null ? null : (map['revision']! as int).input(),
      status: (map['status'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

