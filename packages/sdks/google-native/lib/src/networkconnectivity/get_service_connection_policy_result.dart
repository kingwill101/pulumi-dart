// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_response.dart';
import 'psc_connection_response.dart';

/// Result data returned by getServiceConnectionPolicy.
class GetServiceConnectionPolicyResult {
  /// Time when the ServiceConnectionMap was created.
  final String createTime;

  /// A description of this resource.
  final String description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// The type of underlying resources used to create the connection.
  final String infrastructure;

  /// User-defined labels.
  final Map<String, String> labels;

  /// Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final String name;

  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final String network;

  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  final PscConfigResponse pscConfig;

  /// [Output only] Information about each Private Service Connect connection.
  final List<PscConnectionResponse> pscConnections;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final String serviceClass;

  /// Time when the ServiceConnectionMap was updated.
  final String updateTime;

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
  GetServiceConnectionPolicyResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.infrastructure,
    required this.labels,
    required this.name,
    required this.network,
    required this.pscConfig,
    required this.pscConnections,
    required this.serviceClass,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'infrastructure': infrastructure,
      'labels': labels,
      'name': name,
      'network': network,
      'pscConfig': pscConfig.toMap(),
      'pscConnections':
          pulumi.Input.encodeList<PscConnectionResponse, Map<String, dynamic>>(
            pscConnections,
            (value) => value.toMap(),
          ),
      'serviceClass': serviceClass,
      'updateTime': updateTime,
    };
  }

  factory GetServiceConnectionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      infrastructure: map['infrastructure'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      pscConfig: PscConfigResponse.fromMap(
        (map['pscConfig']! as Map).cast<String, dynamic>(),
      ),
      pscConnections: pulumi.Input.decodeList<PscConnectionResponse>(
        map['pscConnections']!,
        (value) => PscConnectionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      serviceClass: map['serviceClass'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
