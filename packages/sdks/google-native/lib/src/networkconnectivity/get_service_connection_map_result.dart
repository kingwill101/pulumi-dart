// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_psc_config_response.dart';
import 'consumer_psc_connection_response.dart';
import 'producer_psc_config_response.dart';

/// Result data returned by getServiceConnectionMap.
class GetServiceConnectionMapResult {
  /// The PSC configurations on consumer side.
  final List<ConsumerPscConfigResponse>? consumerPscConfigs;
  /// PSC connection details on consumer side.
  final List<ConsumerPscConnectionResponse>? consumerPscConnections;
  /// Time when the ServiceConnectionMap was created.
  final String? createTime;
  /// A description of this resource.
  final String? description;
  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// The infrastructure used for connections between consumers/producers.
  final String? infrastructure;
  /// User-defined labels.
  final Map<String, String>? labels;
  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  final String? name;
  /// The PSC configurations on producer side.
  final List<ProducerPscConfigResponse>? producerPscConfigs;
  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  final String? serviceClass;
  /// The service class uri this ServiceConnectionMap is for.
  final String? serviceClassUri;
  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  final String? token;
  /// Time when the ServiceConnectionMap was updated.
  final String? updateTime;

  /// Creates a new [GetServiceConnectionMapResult].
  /// [consumerPscConfigs] The PSC configurations on consumer side.
  /// [consumerPscConnections] PSC connection details on consumer side.
  /// [createTime] Time when the ServiceConnectionMap was created.
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [infrastructure] The infrastructure used for connections between consumers/producers.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [producerPscConfigs] The PSC configurations on producer side.
  /// [serviceClass] The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  /// [serviceClassUri] The service class uri this ServiceConnectionMap is for.
  /// [token] The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  /// [updateTime] Time when the ServiceConnectionMap was updated.
  const GetServiceConnectionMapResult({
    this.consumerPscConfigs,
    this.consumerPscConnections,
    this.createTime,
    this.description,
    this.etag,
    this.infrastructure,
    this.labels,
    this.name,
    this.producerPscConfigs,
    this.serviceClass,
    this.serviceClassUri,
    this.token,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerPscConfigs': ?(() { final guardedValue = consumerPscConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConsumerPscConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumerPscConnections': ?(() { final guardedValue = consumerPscConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConsumerPscConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'infrastructure': ?infrastructure,
      'labels': ?labels,
      'name': ?name,
      'producerPscConfigs': ?(() { final guardedValue = producerPscConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ProducerPscConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceClass': ?serviceClass,
      'serviceClassUri': ?serviceClassUri,
      'token': ?token,
      'updateTime': ?updateTime,
    };
  }

  factory GetServiceConnectionMapResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapResult(
      consumerPscConfigs: (() { final guardedValue = map['consumerPscConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConsumerPscConfigResponse>(guardedValue, (value) => ConsumerPscConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumerPscConnections: (() { final guardedValue = map['consumerPscConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConsumerPscConnectionResponse>(guardedValue, (value) => ConsumerPscConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producerPscConfigs: (() { final guardedValue = map['producerPscConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProducerPscConfigResponse>(guardedValue, (value) => ProducerPscConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceClass: (() { final guardedValue = map['serviceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceClassUri: (() { final guardedValue = map['serviceClassUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
