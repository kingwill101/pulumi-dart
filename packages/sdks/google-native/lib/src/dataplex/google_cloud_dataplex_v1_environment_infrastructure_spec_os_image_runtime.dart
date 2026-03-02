// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Software Runtime Configuration to run Analyze.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime {
  /// Dataplex Image version.
  final pulumi.Input<String> imageVersion;
  /// Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final pulumi.Input<List<String>>? javaLibraries;
  /// Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  final pulumi.Input<Map<String, String>>? properties;
  /// Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final pulumi.Input<List<String>>? pythonPackages;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime].
  /// [imageVersion] Dataplex Image version.
  /// [javaLibraries] Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  /// [properties] Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  /// [pythonPackages] Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime({
    required this.imageVersion,
    this.javaLibraries,
    this.properties,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': imageVersion,
      'javaLibraries': ?javaLibraries,
      'properties': ?properties,
      'pythonPackages': ?pythonPackages,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime(
      imageVersion: (map['imageVersion'] as String).input(),
      javaLibraries: map['javaLibraries'] == null ? null : ((map['javaLibraries'] as List).cast<String>()).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      pythonPackages: map['pythonPackages'] == null ? null : ((map['pythonPackages'] as List).cast<String>()).input(),
    );
  }
}

