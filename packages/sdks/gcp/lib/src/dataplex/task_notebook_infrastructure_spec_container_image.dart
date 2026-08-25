// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskNotebookInfrastructureSpecContainerImage {
  /// Container image to use.
  final pulumi.Input<String?>? image;
  /// A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final pulumi.Input<List<String>?>? javaJars;
  /// Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties.
  final pulumi.Input<Map<String, String>?>? properties;
  /// A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final pulumi.Input<List<String>?>? pythonPackages;

  /// Creates a new [TaskNotebookInfrastructureSpecContainerImage].
  /// [image] Container image to use.
  /// [javaJars] A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  /// [properties] Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties.
  /// [pythonPackages] A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  const TaskNotebookInfrastructureSpecContainerImage({
    this.image,
    this.javaJars,
    this.properties,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'javaJars': ?javaJars,
      'properties': ?properties,
      'pythonPackages': ?pythonPackages,
    };
  }

  factory TaskNotebookInfrastructureSpecContainerImage.fromMap(Map<String, dynamic> map) {
    return TaskNotebookInfrastructureSpecContainerImage(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaJars: (() { final guardedValue = map['javaJars']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pythonPackages: (() { final guardedValue = map['pythonPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
