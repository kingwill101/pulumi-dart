// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_psc_config.dart';
import 'producer_psc_config.dart';

/// {@template pulumi_networkconnectivity_v1_service_connection_map_args_doc}
/// The set of arguments for ServiceConnectionMap.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_service_connection_map_args_doc}
class ServiceConnectionMapArgs {
  /// The PSC configurations on consumer side.
  final pulumi.Input<List<ConsumerPscConfig>>? consumerPscConfigs;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;
  /// The PSC configurations on producer side.
  final pulumi.Input<List<ProducerPscConfig>>? producerPscConfigs;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  final pulumi.Input<String>? serviceClass;
  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  final pulumi.Input<String>? serviceConnectionMapId;
  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  final pulumi.Input<String>? token;

  /// Creates a new [ServiceConnectionMapArgs].
  /// [consumerPscConfigs] The PSC configurations on consumer side.
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] User-defined labels.
  /// [location] Optional.
  /// [name] Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [producerPscConfigs] The PSC configurations on producer side.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [serviceClass] The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  /// [serviceConnectionMapId] Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  /// [token] The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  ServiceConnectionMapArgs({
    this.consumerPscConfigs,
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.producerPscConfigs,
    this.project,
    this.requestId,
    this.serviceClass,
    this.serviceConnectionMapId,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerPscConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConsumerPscConfig>, List<Map<String, dynamic>>>(consumerPscConfigs, (value) => pulumi.Input.encodeList<ConsumerPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'producerPscConfigs': ?pulumi.Input.mapOptionalInputValue<List<ProducerPscConfig>, List<Map<String, dynamic>>>(producerPscConfigs, (value) => pulumi.Input.encodeList<ProducerPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'requestId': ?requestId,
      'serviceClass': ?serviceClass,
      'serviceConnectionMapId': ?serviceConnectionMapId,
      'token': ?token,
    };
  }

  factory ServiceConnectionMapArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionMapArgs(
      consumerPscConfigs: map['consumerPscConfigs'] == null ? null : (pulumi.Input.decodeList<ConsumerPscConfig>(map['consumerPscConfigs']!, (value) => ConsumerPscConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      producerPscConfigs: map['producerPscConfigs'] == null ? null : (pulumi.Input.decodeList<ProducerPscConfig>(map['producerPscConfigs']!, (value) => ProducerPscConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      serviceClass: map['serviceClass'] == null ? null : (map['serviceClass']! as String).input(),
      serviceConnectionMapId: map['serviceConnectionMapId'] == null ? null : (map['serviceConnectionMapId']! as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

