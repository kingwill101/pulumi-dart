// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_response.dart';
import 'psc_connection_response.dart';

/// Result data returned by getServiceConnectionPolicy.
class GetServiceConnectionPolicyResult {
  /// Time when the ServiceConnectionMap was created.
  final String? createTime;
  /// A description of this resource.
  final String? description;
  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// The type of underlying resources used to create the connection.
  final String? infrastructure;
  /// User-defined labels.
  final Map<String, String>? labels;
  /// Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final String? name;
  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final String? network;
  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  final PscConfigResponse? pscConfig;
  /// [Output only] Information about each Private Service Connect connection.
  final List<PscConnectionResponse>? pscConnections;
  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final String? serviceClass;
  /// Time when the ServiceConnectionMap was updated.
  final String? updateTime;

  /// Creates a new [GetServiceConnectionPolicyResult].
  /// [createTime] Time when the ServiceConnectionMap was created.
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [infrastructure] The type of underlying resources used to create the connection.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  /// [pscConfig] Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// [pscConnections] [Output only] Information about each Private Service Connect connection.
  /// [serviceClass] The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  /// [updateTime] Time when the ServiceConnectionMap was updated.
  const GetServiceConnectionPolicyResult({
    this.createTime,
    this.description,
    this.etag,
    this.infrastructure,
    this.labels,
    this.name,
    this.network,
    this.pscConfig,
    this.pscConnections,
    this.serviceClass,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'infrastructure': ?infrastructure,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'pscConfig': ?pscConfig?.toMap(),
      'pscConnections': ?(() { final guardedValue = pscConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PscConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceClass': ?serviceClass,
      'updateTime': ?updateTime,
    };
  }

  factory GetServiceConnectionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return PscConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      pscConnections: (() { final guardedValue = map['pscConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PscConnectionResponse>(guardedValue, (value) => PscConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceClass: (() { final guardedValue = map['serviceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
