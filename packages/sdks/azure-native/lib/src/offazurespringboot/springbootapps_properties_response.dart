// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';
import 'springbootapps_properties_response_application_configurations.dart';
import 'springbootapps_properties_response_instances.dart';
import 'springbootapps_properties_response_miscs.dart';

/// The springbootapps resource definition.
class SpringbootappsPropertiesResponse {
  /// The name of SpringBootApp.
  final String? appName;
  /// The application port.
  final int? appPort;
  /// The application type, whether it is a SpringBoot app.
  final String? appType;
  /// The application configuration file list.
  final List<SpringbootappsPropertiesResponseApplicationConfigurations>? applicationConfigurations;
  /// The artifact name of SpringBootApp.
  final String? artifactName;
  /// The application binding port list.
  final List<int>? bindingPorts;
  /// The jdk version in build.
  final String? buildJdkVersion;
  /// The certificate file list.
  final List<String>? certificates;
  /// The checksum of jar file.
  final String? checksum;
  /// The connection string list.
  final List<String>? connectionStrings;
  /// The dependency list.
  final List<String>? dependencies;
  /// The environment variable list.
  final List<String>? environments;
  /// The list of errors.
  final List<ErrorResponse>? errors;
  /// The total instance count the app deployed.
  final int? instanceCount;
  /// The breakdown info for app instances on all the servers
  final List<SpringbootappsPropertiesResponseInstances>? instances;
  /// The jar file location on the server.
  final String? jarFileLocation;
  /// The jvm heap memory allocated.
  final int? jvmMemoryInMB;
  /// The jvm options.
  final List<String>? jvmOptions;
  /// Resource labels
  final Map<String, String>? labels;
  /// Time when this springbootapps jar file was last modified.
  final String? lastModifiedTime;
  /// Time when this springbootapps instance was last refreshed.
  final String? lastUpdatedTime;
  /// The machine ARM id list the app belongs to.
  final List<String>? machineArmIds;
  /// The other types of date collected.
  final List<SpringbootappsPropertiesResponseMiscs>? miscs;
  /// The resource provisioning state.
  final String provisioningState;
  /// The jdk version installed on server
  final String? runtimeJdkVersion;
  /// The server list the app installed
  final List<String>? servers;
  /// The spring boot version.
  final String? springBootVersion;
  /// The static content location list.
  final List<String>? staticContentLocations;

  /// Creates a new [SpringbootappsPropertiesResponse].
  /// [appName] The name of SpringBootApp.
  /// [appPort] The application port.
  /// [appType] The application type, whether it is a SpringBoot app.
  /// [applicationConfigurations] The application configuration file list.
  /// [artifactName] The artifact name of SpringBootApp.
  /// [bindingPorts] The application binding port list.
  /// [buildJdkVersion] The jdk version in build.
  /// [certificates] The certificate file list.
  /// [checksum] The checksum of jar file.
  /// [connectionStrings] The connection string list.
  /// [dependencies] The dependency list.
  /// [environments] The environment variable list.
  /// [errors] The list of errors.
  /// [instanceCount] The total instance count the app deployed.
  /// [instances] The breakdown info for app instances on all the servers
  /// [jarFileLocation] The jar file location on the server.
  /// [jvmMemoryInMB] The jvm heap memory allocated.
  /// [jvmOptions] The jvm options.
  /// [labels] Resource labels
  /// [lastModifiedTime] Time when this springbootapps jar file was last modified.
  /// [lastUpdatedTime] Time when this springbootapps instance was last refreshed.
  /// [machineArmIds] The machine ARM id list the app belongs to.
  /// [miscs] The other types of date collected.
  /// [provisioningState] The resource provisioning state.
  /// [runtimeJdkVersion] The jdk version installed on server
  /// [servers] The server list the app installed
  /// [springBootVersion] The spring boot version.
  /// [staticContentLocations] The static content location list.
  SpringbootappsPropertiesResponse({
    this.appName,
    this.appPort,
    this.appType,
    this.applicationConfigurations,
    this.artifactName,
    this.bindingPorts,
    this.buildJdkVersion,
    this.certificates,
    this.checksum,
    this.connectionStrings,
    this.dependencies,
    this.environments,
    this.errors,
    this.instanceCount,
    this.instances,
    this.jarFileLocation,
    this.jvmMemoryInMB,
    this.jvmOptions,
    this.labels,
    this.lastModifiedTime,
    this.lastUpdatedTime,
    this.machineArmIds,
    this.miscs,
    required this.provisioningState,
    this.runtimeJdkVersion,
    this.servers,
    this.springBootVersion,
    this.staticContentLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'appPort': ?appPort,
      'appType': ?appType,
      'applicationConfigurations': ?applicationConfigurations == null ? null : pulumi.Input.encodeList<SpringbootappsPropertiesResponseApplicationConfigurations, Map<String, dynamic>>(applicationConfigurations!, (value) => value.toMap()),
      'artifactName': ?artifactName,
      'bindingPorts': ?bindingPorts,
      'buildJdkVersion': ?buildJdkVersion,
      'certificates': ?certificates,
      'checksum': ?checksum,
      'connectionStrings': ?connectionStrings,
      'dependencies': ?dependencies,
      'environments': ?environments,
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'instanceCount': ?instanceCount,
      'instances': ?instances == null ? null : pulumi.Input.encodeList<SpringbootappsPropertiesResponseInstances, Map<String, dynamic>>(instances!, (value) => value.toMap()),
      'jarFileLocation': ?jarFileLocation,
      'jvmMemoryInMB': ?jvmMemoryInMB,
      'jvmOptions': ?jvmOptions,
      'labels': ?labels,
      'lastModifiedTime': ?lastModifiedTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'machineArmIds': ?machineArmIds,
      'miscs': ?miscs == null ? null : pulumi.Input.encodeList<SpringbootappsPropertiesResponseMiscs, Map<String, dynamic>>(miscs!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'runtimeJdkVersion': ?runtimeJdkVersion,
      'servers': ?servers,
      'springBootVersion': ?springBootVersion,
      'staticContentLocations': ?staticContentLocations,
    };
  }

  factory SpringbootappsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponse(
      appName: map['appName'] == null ? null : map['appName'] as String,
      appPort: map['appPort'] == null ? null : map['appPort'] as int,
      appType: map['appType'] == null ? null : map['appType'] as String,
      applicationConfigurations: map['applicationConfigurations'] == null ? null : pulumi.Input.decodeList<SpringbootappsPropertiesResponseApplicationConfigurations>(map['applicationConfigurations'], (value) => SpringbootappsPropertiesResponseApplicationConfigurations.fromMap((value as Map).cast<String, dynamic>())),
      artifactName: map['artifactName'] == null ? null : map['artifactName'] as String,
      bindingPorts: map['bindingPorts'] == null ? null : (map['bindingPorts'] as List).cast<int>(),
      buildJdkVersion: map['buildJdkVersion'] == null ? null : map['buildJdkVersion'] as String,
      certificates: map['certificates'] == null ? null : (map['certificates'] as List).cast<String>(),
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      connectionStrings: map['connectionStrings'] == null ? null : (map['connectionStrings'] as List).cast<String>(),
      dependencies: map['dependencies'] == null ? null : (map['dependencies'] as List).cast<String>(),
      environments: map['environments'] == null ? null : (map['environments'] as List).cast<String>(),
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ErrorResponse>(map['errors'], (value) => ErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instances: map['instances'] == null ? null : pulumi.Input.decodeList<SpringbootappsPropertiesResponseInstances>(map['instances'], (value) => SpringbootappsPropertiesResponseInstances.fromMap((value as Map).cast<String, dynamic>())),
      jarFileLocation: map['jarFileLocation'] == null ? null : map['jarFileLocation'] as String,
      jvmMemoryInMB: map['jvmMemoryInMB'] == null ? null : map['jvmMemoryInMB'] as int,
      jvmOptions: map['jvmOptions'] == null ? null : (map['jvmOptions'] as List).cast<String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      machineArmIds: map['machineArmIds'] == null ? null : (map['machineArmIds'] as List).cast<String>(),
      miscs: map['miscs'] == null ? null : pulumi.Input.decodeList<SpringbootappsPropertiesResponseMiscs>(map['miscs'], (value) => SpringbootappsPropertiesResponseMiscs.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      runtimeJdkVersion: map['runtimeJdkVersion'] == null ? null : map['runtimeJdkVersion'] as String,
      servers: map['servers'] == null ? null : (map['servers'] as List).cast<String>(),
      springBootVersion: map['springBootVersion'] == null ? null : map['springBootVersion'] as String,
      staticContentLocations: map['staticContentLocations'] == null ? null : (map['staticContentLocations'] as List).cast<String>(),
    );
  }
}

