// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connection_policy_psc_config.dart';
import 'service_connection_policy_psc_connection.dart';

/// Input properties used for looking up and filtering ServiceConnectionPolicy resources.
class ServiceConnectionPolicyState {
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The type of underlying resources used to create the connection.
  final pulumi.Input<String>? infrastructure;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the ServiceConnectionPolicy.
  final pulumi.Input<String>? location;
  /// The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;
  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// Structure is documented below.
  final pulumi.Input<ServiceConnectionPolicyPscConfig>? pscConfig;
  /// Information about each Private Service Connect connection.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceConnectionPolicyPscConnection>>? pscConnections;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  /// It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final pulumi.Input<String>? serviceClass;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ServiceConnectionPolicyState].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [infrastructure] The type of underlying resources used to create the connection.
  /// [labels] User-defined labels.
  /// [location] The location of the ServiceConnectionPolicy.
  /// [name] The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// [pscConnections] Information about each Private Service Connect connection.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceClass] The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  /// [updateTime] The timestamp when the resource was updated.
  ServiceConnectionPolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? infrastructure,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<ServiceConnectionPolicyPscConfig>? pscConfig,
    pulumi.Output<List<ServiceConnectionPolicyPscConnection>>? pscConnections,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceClass,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      infrastructure = pulumi.Input.asOptionalInput<String>(infrastructure),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfig = pulumi.Input.asOptionalInput<ServiceConnectionPolicyPscConfig>(pscConfig),
      pscConnections = pulumi.Input.asOptionalInput<List<ServiceConnectionPolicyPscConnection>>(pscConnections),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceClass = pulumi.Input.asOptionalInput<String>(serviceClass),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'infrastructure': ?infrastructure,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<ServiceConnectionPolicyPscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'pscConnections': ?pulumi.Input.mapOptionalInputValue<List<ServiceConnectionPolicyPscConnection>, List<Map<String, dynamic>>>(pscConnections, (value) => pulumi.Input.encodeList<ServiceConnectionPolicyPscConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': ?pulumiLabels,
      'serviceClass': ?serviceClass,
      'updateTime': ?updateTime,
    };
  }

  factory ServiceConnectionPolicyState.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      infrastructure: map['infrastructure'] == null ? null : pulumi.Output.create<String>(map['infrastructure'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConfig: map['pscConfig'] == null ? null : pulumi.Output.create<ServiceConnectionPolicyPscConfig>(ServiceConnectionPolicyPscConfig.fromMap((map['pscConfig'] as Map).cast<String, dynamic>())),
      pscConnections: map['pscConnections'] == null ? null : pulumi.Output.create<List<ServiceConnectionPolicyPscConnection>>(pulumi.Input.decodeList<ServiceConnectionPolicyPscConnection>(map['pscConnections'], (value) => ServiceConnectionPolicyPscConnection.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceClass: map['serviceClass'] == null ? null : pulumi.Output.create<String>(map['serviceClass'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

