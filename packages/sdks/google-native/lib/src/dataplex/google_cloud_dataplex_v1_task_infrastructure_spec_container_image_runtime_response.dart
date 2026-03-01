// ignore_for_file: unused_element, unnecessary_cast


/// Container Image Runtime Configuration used with Batch execution.
class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse {
  /// Optional. Container image to use.
  final String image;
  /// Optional. A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final List<String> javaJars;
  /// Optional. Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final Map<String, String> properties;
  /// Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final List<String> pythonPackages;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse].
  /// [image] Optional. Container image to use.
  /// [javaJars] Optional. A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  /// [properties] Optional. Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  /// [pythonPackages] Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse({
    required this.image,
    required this.javaJars,
    required this.properties,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'javaJars': javaJars,
      'properties': properties,
      'pythonPackages': pythonPackages,
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse(
      image: map['image'] as String,
      javaJars: (map['javaJars'] as List).cast<String>(),
      properties: (map['properties'] as Map).cast<String, String>(),
      pythonPackages: (map['pythonPackages'] as List).cast<String>(),
    );
  }
}

