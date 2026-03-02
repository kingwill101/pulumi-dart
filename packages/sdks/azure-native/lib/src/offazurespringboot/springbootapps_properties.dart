// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error.dart';
import 'springbootapps_properties_application_configurations.dart';
import 'springbootapps_properties_instances.dart';
import 'springbootapps_properties_miscs.dart';

/// The springbootapps resource definition.
class SpringbootappsProperties {
  /// The name of SpringBootApp.
  final pulumi.Input<String>? appName;
  /// The application port.
  final pulumi.Input<int>? appPort;
  /// The application type, whether it is a SpringBoot app.
  final pulumi.Input<String>? appType;
  /// The application configuration file list.
  final pulumi.Input<List<SpringbootappsPropertiesApplicationConfigurations>>? applicationConfigurations;
  /// The artifact name of SpringBootApp.
  final pulumi.Input<String>? artifactName;
  /// The application binding port list.
  final pulumi.Input<List<int>>? bindingPorts;
  /// The jdk version in build.
  final pulumi.Input<String>? buildJdkVersion;
  /// The certificate file list.
  final pulumi.Input<List<String>>? certificates;
  /// The checksum of jar file.
  final pulumi.Input<String>? checksum;
  /// The connection string list.
  final pulumi.Input<List<String>>? connectionStrings;
  /// The dependency list.
  final pulumi.Input<List<String>>? dependencies;
  /// The environment variable list.
  final pulumi.Input<List<String>>? environments;
  /// The list of errors.
  final pulumi.Input<List<Error>>? errors;
  /// The total instance count the app deployed.
  final pulumi.Input<int>? instanceCount;
  /// The breakdown info for app instances on all the servers
  final pulumi.Input<List<SpringbootappsPropertiesInstances>>? instances;
  /// The jar file location on the server.
  final pulumi.Input<String>? jarFileLocation;
  /// The jvm heap memory allocated.
  final pulumi.Input<int>? jvmMemoryInMB;
  /// The jvm options.
  final pulumi.Input<List<String>>? jvmOptions;
  /// Resource labels
  final pulumi.Input<Map<String, String>>? labels;
  /// Time when this springbootapps jar file was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// Time when this springbootapps instance was last refreshed.
  final pulumi.Input<String>? lastUpdatedTime;
  /// The machine ARM id list the app belongs to.
  final pulumi.Input<List<String>>? machineArmIds;
  /// The other types of date collected.
  final pulumi.Input<List<SpringbootappsPropertiesMiscs>>? miscs;
  /// The jdk version installed on server
  final pulumi.Input<String>? runtimeJdkVersion;
  /// The server list the app installed
  final pulumi.Input<List<String>>? servers;
  /// The spring boot version.
  final pulumi.Input<String>? springBootVersion;
  /// The static content location list.
  final pulumi.Input<List<String>>? staticContentLocations;

  /// Creates a new [SpringbootappsProperties].
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
  /// [runtimeJdkVersion] The jdk version installed on server
  /// [servers] The server list the app installed
  /// [springBootVersion] The spring boot version.
  /// [staticContentLocations] The static content location list.
  SpringbootappsProperties({
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
      'applicationConfigurations': ?pulumi.Input.mapOptionalInputValue<List<SpringbootappsPropertiesApplicationConfigurations>, List<Map<String, dynamic>>>(applicationConfigurations, (value) => pulumi.Input.encodeList<SpringbootappsPropertiesApplicationConfigurations, Map<String, dynamic>>(value, (value) => value.toMap())),
      'artifactName': ?artifactName,
      'bindingPorts': ?bindingPorts,
      'buildJdkVersion': ?buildJdkVersion,
      'certificates': ?certificates,
      'checksum': ?checksum,
      'connectionStrings': ?connectionStrings,
      'dependencies': ?dependencies,
      'environments': ?environments,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<Error>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<Error, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceCount': ?instanceCount,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<SpringbootappsPropertiesInstances>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<SpringbootappsPropertiesInstances, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jarFileLocation': ?jarFileLocation,
      'jvmMemoryInMB': ?jvmMemoryInMB,
      'jvmOptions': ?jvmOptions,
      'labels': ?labels,
      'lastModifiedTime': ?lastModifiedTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'machineArmIds': ?machineArmIds,
      'miscs': ?pulumi.Input.mapOptionalInputValue<List<SpringbootappsPropertiesMiscs>, List<Map<String, dynamic>>>(miscs, (value) => pulumi.Input.encodeList<SpringbootappsPropertiesMiscs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeJdkVersion': ?runtimeJdkVersion,
      'servers': ?servers,
      'springBootVersion': ?springBootVersion,
      'staticContentLocations': ?staticContentLocations,
    };
  }

  factory SpringbootappsProperties.fromMap(Map<String, dynamic> map) {
    return SpringbootappsProperties(
      appName: map['appName'] == null ? null : (map['appName'] as String).input(),
      appPort: map['appPort'] == null ? null : (map['appPort'] as int).input(),
      appType: map['appType'] == null ? null : (map['appType'] as String).input(),
      applicationConfigurations: map['applicationConfigurations'] == null ? null : (pulumi.Input.decodeList<SpringbootappsPropertiesApplicationConfigurations>(map['applicationConfigurations'], (value) => SpringbootappsPropertiesApplicationConfigurations.fromMap((value as Map).cast<String, dynamic>()))).input(),
      artifactName: map['artifactName'] == null ? null : (map['artifactName'] as String).input(),
      bindingPorts: map['bindingPorts'] == null ? null : ((map['bindingPorts'] as List).cast<int>()).input(),
      buildJdkVersion: map['buildJdkVersion'] == null ? null : (map['buildJdkVersion'] as String).input(),
      certificates: map['certificates'] == null ? null : ((map['certificates'] as List).cast<String>()).input(),
      checksum: map['checksum'] == null ? null : (map['checksum'] as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : ((map['connectionStrings'] as List).cast<String>()).input(),
      dependencies: map['dependencies'] == null ? null : ((map['dependencies'] as List).cast<String>()).input(),
      environments: map['environments'] == null ? null : ((map['environments'] as List).cast<String>()).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<Error>(map['errors'], (value) => Error.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<SpringbootappsPropertiesInstances>(map['instances'], (value) => SpringbootappsPropertiesInstances.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jarFileLocation: map['jarFileLocation'] == null ? null : (map['jarFileLocation'] as String).input(),
      jvmMemoryInMB: map['jvmMemoryInMB'] == null ? null : (map['jvmMemoryInMB'] as int).input(),
      jvmOptions: map['jvmOptions'] == null ? null : ((map['jvmOptions'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      machineArmIds: map['machineArmIds'] == null ? null : ((map['machineArmIds'] as List).cast<String>()).input(),
      miscs: map['miscs'] == null ? null : (pulumi.Input.decodeList<SpringbootappsPropertiesMiscs>(map['miscs'], (value) => SpringbootappsPropertiesMiscs.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runtimeJdkVersion: map['runtimeJdkVersion'] == null ? null : (map['runtimeJdkVersion'] as String).input(),
      servers: map['servers'] == null ? null : ((map['servers'] as List).cast<String>()).input(),
      springBootVersion: map['springBootVersion'] == null ? null : (map['springBootVersion'] as String).input(),
      staticContentLocations: map['staticContentLocations'] == null ? null : ((map['staticContentLocations'] as List).cast<String>()).input(),
    );
  }
}

