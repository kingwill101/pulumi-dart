// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudAppDynamicsApplicationPerformanceMonitoring resources.
class SpringCloudAppDynamicsApplicationPerformanceMonitoringState {
  /// Specifies the account access key used to authenticate with the Controller.
  final pulumi.Input<String?>? agentAccountAccessKey;
  /// Specifies the account name of the App Dynamics account.
  final pulumi.Input<String?>? agentAccountName;
  /// Specifies the name of the logical business application that this JVM node belongs to.
  final pulumi.Input<String?>? agentApplicationName;
  /// Specifies the name of the node. Where JVMs are dynamically created.
  final pulumi.Input<String?>? agentNodeName;
  /// Specifies the name of the tier that this JVM node belongs to.
  final pulumi.Input<String?>? agentTierName;
  /// Specifies the unique host ID which is used to Logically partition a single physical host or virtual machine such that it appears to the Controller that the application is running on different machines.
  final pulumi.Input<String?>? agentUniqueHostId;
  /// Specifies the hostname or the IP address of the AppDynamics Controller.
  final pulumi.Input<String?>? controllerHostName;
  /// Specifies the HTTP(S) port of the AppDynamics Controller. This is the port used to access the AppDynamics browser-based user interface.
  final pulumi.Input<int?>? controllerPort;
  /// Specifies whether enable use SSL (HTTPS) to connect to the AppDynamics Controller.
  final pulumi.Input<bool?>? controllerSslEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool?>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for App Dynamics. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? springCloudServiceId;

  /// Creates a new [SpringCloudAppDynamicsApplicationPerformanceMonitoringState].
  /// [agentAccountAccessKey] Specifies the account access key used to authenticate with the Controller.
  /// [agentAccountName] Specifies the account name of the App Dynamics account.
  /// [agentApplicationName] Specifies the name of the logical business application that this JVM node belongs to.
  /// [agentNodeName] Specifies the name of the node. Where JVMs are dynamically created.
  /// [agentTierName] Specifies the name of the tier that this JVM node belongs to.
  /// [agentUniqueHostId] Specifies the unique host ID which is used to Logically partition a single physical host or virtual machine such that it appears to the Controller that the application is running on different machines.
  /// [controllerHostName] Specifies the hostname or the IP address of the AppDynamics Controller.
  /// [controllerPort] Specifies the HTTP(S) port of the AppDynamics Controller. This is the port used to access the AppDynamics browser-based user interface.
  /// [controllerSslEnabled] Specifies whether enable use SSL (HTTPS) to connect to the AppDynamics Controller.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for App Dynamics. Changing this forces a new resource to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  const SpringCloudAppDynamicsApplicationPerformanceMonitoringState({
    this.agentAccountAccessKey,
    this.agentAccountName,
    this.agentApplicationName,
    this.agentNodeName,
    this.agentTierName,
    this.agentUniqueHostId,
    this.controllerHostName,
    this.controllerPort,
    this.controllerSslEnabled,
    this.globallyEnabled,
    this.name,
    this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAccountAccessKey': ?agentAccountAccessKey,
      'agentAccountName': ?agentAccountName,
      'agentApplicationName': ?agentApplicationName,
      'agentNodeName': ?agentNodeName,
      'agentTierName': ?agentTierName,
      'agentUniqueHostId': ?agentUniqueHostId,
      'controllerHostName': ?controllerHostName,
      'controllerPort': ?controllerPort,
      'controllerSslEnabled': ?controllerSslEnabled,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudAppDynamicsApplicationPerformanceMonitoringState.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppDynamicsApplicationPerformanceMonitoringState(
      agentAccountAccessKey: (() { final guardedValue = map['agentAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentAccountName: (() { final guardedValue = map['agentAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentApplicationName: (() { final guardedValue = map['agentApplicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentNodeName: (() { final guardedValue = map['agentNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentTierName: (() { final guardedValue = map['agentTierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentUniqueHostId: (() { final guardedValue = map['agentUniqueHostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controllerHostName: (() { final guardedValue = map['controllerHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controllerPort: (() { final guardedValue = map['controllerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      controllerSslEnabled: (() { final guardedValue = map['controllerSslEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globallyEnabled: (() { final guardedValue = map['globallyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudServiceId: (() { final guardedValue = map['springCloudServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
