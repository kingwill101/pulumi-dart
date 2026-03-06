// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connection_policy_psc_config.dart';

/// {@template pulumi_networkconnectivity_service_connection_policy_service_connection_policy_args_doc}
/// The set of arguments for ServiceConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_service_connection_policy_service_connection_policy_args_doc}
class ServiceConnectionPolicyArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the ServiceConnectionPolicy.
  final pulumi.Input<String> location;
  /// The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;
  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// Structure is documented below.
  final pulumi.Input<ServiceConnectionPolicyPscConfig>? pscConfig;
  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  /// It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final pulumi.Input<String> serviceClass;

  /// Creates a new [ServiceConnectionPolicyArgs].
  /// [description] Free-text description of the resource.
  /// [labels] User-defined labels.
  /// [location] The location of the ServiceConnectionPolicy.
  /// [name] The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// [serviceClass] The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
  const ServiceConnectionPolicyArgs({
    this.description,
    this.labels,
    required this.location,
    this.name,
    required this.network,
    this.project,
    this.pscConfig,
    required this.serviceClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'network': network,
      'project': ?project,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<ServiceConnectionPolicyPscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'serviceClass': serviceClass,
    };
  }

  factory ServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConnectionPolicyPscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceClass: pulumi.Input.fromValue(map['serviceClass'] as String),
    );
  }
}

