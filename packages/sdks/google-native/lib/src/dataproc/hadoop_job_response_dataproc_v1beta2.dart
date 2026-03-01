// ignore_for_file: unused_element, unnecessary_cast

import 'logging_config_response_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache Hadoop MapReduce (https://hadoop.apache.org/docs/current/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https://hadoop.apache.org/docs/r2.7.1/hadoop-yarn/hadoop-yarn-site/YARN.html).
class HadoopJobResponseDataprocV1beta2 {
  /// Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.
  final List<String> archiveUris;
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String> args;
  /// Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks.
  final List<String> fileUris;
  /// Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.
  final List<String> jarFileUris;
  /// Optional. The runtime log config for job execution.
  final LoggingConfigResponseDataprocV1beta2 loggingConfig;
  /// The name of the driver's main class. The jar file containing the class must be in the default CLASSPATH or specified in jar_file_uris.
  final String mainClass;
  /// The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'
  final String mainJarFileUri;
  /// Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code.
  final Map<String, String> properties;

  /// Creates a new [HadoopJobResponseDataprocV1beta2].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks.
  /// [jarFileUris] Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainClass] The name of the driver's main class. The jar file containing the class must be in the default CLASSPATH or specified in jar_file_uris.
  /// [mainJarFileUri] The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar'
  /// [properties] Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code.
  HadoopJobResponseDataprocV1beta2({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.jarFileUris,
    required this.loggingConfig,
    required this.mainClass,
    required this.mainJarFileUri,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'args': args,
      'fileUris': fileUris,
      'jarFileUris': jarFileUris,
      'loggingConfig': loggingConfig.toMap(),
      'mainClass': mainClass,
      'mainJarFileUri': mainJarFileUri,
      'properties': properties,
    };
  }

  factory HadoopJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return HadoopJobResponseDataprocV1beta2(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      args: (map['args'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      jarFileUris: (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponseDataprocV1beta2.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
    );
  }
}

