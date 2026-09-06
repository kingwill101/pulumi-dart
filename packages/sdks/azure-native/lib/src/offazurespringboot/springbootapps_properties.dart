// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error.dart';
import 'springbootapps_properties_application_configurations.dart';
import 'springbootapps_properties_instances.dart';
import 'springbootapps_properties_miscs.dart';

/// The springbootapps resource definition.
class SpringbootappsProperties {
  /// The name of SpringBootApp.
  final pulumi.Input<String?>? appName;
  /// The application port.
  final pulumi.Input<int?>? appPort;
  /// The application type, whether it is a SpringBoot app.
  final pulumi.Input<String?>? appType;
  /// The application configuration file list.
  final pulumi.Input<List<SpringbootappsPropertiesApplicationConfigurations>?>? applicationConfigurations;
  /// The artifact name of SpringBootApp.
  final pulumi.Input<String?>? artifactName;
  /// The application binding port list.
  final pulumi.Input<List<int>?>? bindingPorts;
  /// The jdk version in build.
  final pulumi.Input<String?>? buildJdkVersion;
  /// The certificate file list.
  final pulumi.Input<List<String>?>? certificates;
  /// The checksum of jar file.
  final pulumi.Input<String?>? checksum;
  /// The connection string list.
  final pulumi.Input<List<String>?>? connectionStrings;
  /// The dependency list.
  final pulumi.Input<List<String>?>? dependencies;
  /// The environment variable list.
  final pulumi.Input<List<String>?>? environments;
  /// The list of errors.
  final pulumi.Input<List<Error>?>? errors;
  /// The total instance count the app deployed.
  final pulumi.Input<int?>? instanceCount;
  /// The breakdown info for app instances on all the servers
  final pulumi.Input<List<SpringbootappsPropertiesInstances>?>? instances;
  /// The jar file location on the server.
  final pulumi.Input<String?>? jarFileLocation;
  /// The jvm heap memory allocated.
  final pulumi.Input<int?>? jvmMemoryInMB;
  /// The jvm options.
  final pulumi.Input<List<String>?>? jvmOptions;
  /// Resource labels
  final pulumi.Input<Map<String, String>?>? labels;
  /// Time when this springbootapps jar file was last modified.
  final pulumi.Input<String?>? lastModifiedTime;
  /// Time when this springbootapps instance was last refreshed.
  final pulumi.Input<String?>? lastUpdatedTime;
  /// The machine ARM id list the app belongs to.
  final pulumi.Input<List<String>?>? machineArmIds;
  /// The other types of date collected.
  final pulumi.Input<List<SpringbootappsPropertiesMiscs>?>? miscs;
  /// The jdk version installed on server
  final pulumi.Input<String?>? runtimeJdkVersion;
  /// The server list the app installed
  final pulumi.Input<List<String>?>? servers;
  /// The spring boot version.
  final pulumi.Input<String?>? springBootVersion;
  /// The static content location list.
  final pulumi.Input<List<String>?>? staticContentLocations;

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
  const SpringbootappsProperties({
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
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPort: (() { final guardedValue = map['appPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationConfigurations: (() { final guardedValue = map['applicationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringbootappsPropertiesApplicationConfigurations>(guardedValue, (value) => SpringbootappsPropertiesApplicationConfigurations.fromMap((value as Map).cast<String, dynamic>()))); })(),
      artifactName: (() { final guardedValue = map['artifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindingPorts: (() { final guardedValue = map['bindingPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      buildJdkVersion: (() { final guardedValue = map['buildJdkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Error>(guardedValue, (value) => Error.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringbootappsPropertiesInstances>(guardedValue, (value) => SpringbootappsPropertiesInstances.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jarFileLocation: (() { final guardedValue = map['jarFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jvmMemoryInMB: (() { final guardedValue = map['jvmMemoryInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      jvmOptions: (() { final guardedValue = map['jvmOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineArmIds: (() { final guardedValue = map['machineArmIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      miscs: (() { final guardedValue = map['miscs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringbootappsPropertiesMiscs>(guardedValue, (value) => SpringbootappsPropertiesMiscs.fromMap((value as Map).cast<String, dynamic>()))); })(),
      runtimeJdkVersion: (() { final guardedValue = map['runtimeJdkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      springBootVersion: (() { final guardedValue = map['springBootVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticContentLocations: (() { final guardedValue = map['staticContentLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
