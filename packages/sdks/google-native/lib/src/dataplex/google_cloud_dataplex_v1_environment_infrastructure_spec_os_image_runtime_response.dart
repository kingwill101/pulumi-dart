// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Software Runtime Configuration to run Analyze.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse {
  /// Dataplex Image version.
  final pulumi.Input<String> imageVersion;
  /// Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final pulumi.Input<List<String>> javaLibraries;
  /// Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  final pulumi.Input<Map<String, String>> properties;
  /// Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final pulumi.Input<List<String>> pythonPackages;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse].
  /// [imageVersion] Dataplex Image version.
  /// [javaLibraries] Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  /// [properties] Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  /// [pythonPackages] Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse({
    required this.imageVersion,
    required this.javaLibraries,
    required this.properties,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': imageVersion,
      'javaLibraries': javaLibraries,
      'properties': properties,
      'pythonPackages': pythonPackages,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse(
      imageVersion: pulumi.Input.fromValue(map['imageVersion'] as String),
      javaLibraries: pulumi.Input.fromValue((map['javaLibraries'] as List).cast<String>()),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      pythonPackages: pulumi.Input.fromValue((map['pythonPackages'] as List).cast<String>()),
    );
  }
}

