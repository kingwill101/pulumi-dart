// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_scim_config_mapping_operations.dart';

class GetZeroTrustAccessApplicationScimConfigMapping {
  /// Whether or not this mapping is enabled.
  final pulumi.Input<bool> enabled;
  /// A [SCIM filter expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2) that matches resources that should be provisioned to this application.
  final pulumi.Input<String> filter;
  /// Whether or not this mapping applies to creates, updates, or deletes.
  final pulumi.Input<GetZeroTrustAccessApplicationScimConfigMappingOperations> operations;
  /// Which SCIM resource type this mapping applies to.
  final pulumi.Input<String> schema;
  /// The level of adherence to outbound resource schemas when provisioning to this mapping. ‘Strict’ removes unknown values, while ‘passthrough’ passes unknown values to the target.
  /// Available values: "strict", "passthrough".
  final pulumi.Input<String> strictness;
  /// A [JSONata](https://jsonata.org/) expression that transforms the resource before provisioning it in the application.
  final pulumi.Input<String> transformJsonata;

  /// Creates a new [GetZeroTrustAccessApplicationScimConfigMapping].
  /// [enabled] Whether or not this mapping is enabled.
  /// [filter] A [SCIM filter expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2) that matches resources that should be provisioned to this application.
  /// [operations] Whether or not this mapping applies to creates, updates, or deletes.
  /// [schema] Which SCIM resource type this mapping applies to.
  /// [strictness] The level of adherence to outbound resource schemas when provisioning to this mapping. ‘Strict’ removes unknown values, while ‘passthrough’ passes unknown values to the target.
  /// [transformJsonata] A [JSONata](https://jsonata.org/) expression that transforms the resource before provisioning it in the application.
  const GetZeroTrustAccessApplicationScimConfigMapping({
    required this.enabled,
    required this.filter,
    required this.operations,
    required this.schema,
    required this.strictness,
    required this.transformJsonata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': filter,
      'operations': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationScimConfigMappingOperations, Map<String, dynamic>>(operations, (value) => value.toMap()),
      'schema': schema,
      'strictness': strictness,
      'transformJsonata': transformJsonata,
    };
  }

  factory GetZeroTrustAccessApplicationScimConfigMapping.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationScimConfigMapping(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      operations: pulumi.Input.fromValue(GetZeroTrustAccessApplicationScimConfigMappingOperations.fromMap((map['operations']! as Map).cast<String, dynamic>())),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      strictness: pulumi.Input.fromValue(map['strictness'] as String),
      transformJsonata: pulumi.Input.fromValue(map['transformJsonata'] as String),
    );
  }
}
