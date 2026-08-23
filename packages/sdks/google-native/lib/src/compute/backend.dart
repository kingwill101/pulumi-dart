// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_balancing_mode.dart';
import 'backend_preference.dart';

/// Message containing information of one individual backend.
class Backend {
  /// Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
  final pulumi.Input<BackendBalancingMode>? balancingMode;
  /// A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service. Not available with backends that don't support using a balancingMode. This includes backends such as global internet NEGs, regional serverless NEGs, and PSC NEGs.
  final pulumi.Input<double>? capacityScaler;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  final pulumi.Input<bool>? failover;
  /// The fully-qualified URL of an instance group or network endpoint group (NEG) resource. To determine what types of backends a load balancer supports, see the [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service#backends). You must use the *fully-qualified* URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  final pulumi.Input<String>? group;
  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final pulumi.Input<int>? maxConnections;
  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final pulumi.Input<int>? maxConnectionsPerEndpoint;
  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final pulumi.Input<int>? maxConnectionsPerInstance;
  /// Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final pulumi.Input<int>? maxRate;
  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final pulumi.Input<double>? maxRatePerEndpoint;
  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final pulumi.Input<double>? maxRatePerInstance;
  /// Optional parameter to define a target capacity for the UTILIZATION balancing mode. The valid range is [0.0, 1.0]. For usage guidelines, see Utilization balancing mode.
  final pulumi.Input<double>? maxUtilization;
  /// This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
  final pulumi.Input<BackendPreference>? preference;

  /// Creates a new [Backend].
  /// [balancingMode] Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
  /// [capacityScaler] A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service. Not available with backends that don't support using a balancingMode. This includes backends such as global internet NEGs, regional serverless NEGs, and PSC NEGs.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [failover] This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  /// [group] The fully-qualified URL of an instance group or network endpoint group (NEG) resource. To determine what types of backends a load balancer supports, see the [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service#backends). You must use the *fully-qualified* URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  /// [maxConnections] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxConnectionsPerEndpoint] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxConnectionsPerInstance] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxRate] Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxRatePerEndpoint] Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxRatePerInstance] Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxUtilization] Optional parameter to define a target capacity for the UTILIZATION balancing mode. The valid range is [0.0, 1.0]. For usage guidelines, see Utilization balancing mode.
  /// [preference] This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
  const Backend({
    this.balancingMode,
    this.capacityScaler,
    this.description,
    this.failover,
    this.group,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balancingMode': ?pulumi.Input.mapOptionalInputValue<BackendBalancingMode, String>(balancingMode, (value) => value.wireValue),
      'capacityScaler': ?capacityScaler,
      'description': ?description,
      'failover': ?failover,
      'group': ?group,
      'maxConnections': ?maxConnections,
      'maxConnectionsPerEndpoint': ?maxConnectionsPerEndpoint,
      'maxConnectionsPerInstance': ?maxConnectionsPerInstance,
      'maxRate': ?maxRate,
      'maxRatePerEndpoint': ?maxRatePerEndpoint,
      'maxRatePerInstance': ?maxRatePerInstance,
      'maxUtilization': ?maxUtilization,
      'preference': ?pulumi.Input.mapOptionalInputValue<BackendPreference, String>(preference, (value) => value.wireValue),
    };
  }

  factory Backend.fromMap(Map<String, dynamic> map) {
    return Backend(
      balancingMode: (() { final guardedValue = map['balancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBalancingMode.fromValue(guardedValue as String)); })(),
      capacityScaler: (() { final guardedValue = map['capacityScaler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failover: (() { final guardedValue = map['failover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConnectionsPerEndpoint: (() { final guardedValue = map['maxConnectionsPerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConnectionsPerInstance: (() { final guardedValue = map['maxConnectionsPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRate: (() { final guardedValue = map['maxRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRatePerEndpoint: (() { final guardedValue = map['maxRatePerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxRatePerInstance: (() { final guardedValue = map['maxRatePerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxUtilization: (() { final guardedValue = map['maxUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendPreference.fromValue(guardedValue as String)); })(),
    );
  }
}
