// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The resource name for the service in the
  /// format `projects/*/locations/*/namespaces/*/services/*`.
  final pulumi.Input<String>? name;
  /// The resource name of the namespace this service will belong to.
  final pulumi.Input<String>? namespace;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [ServiceState].
  /// [metadata] Metadata for the service. This data can be consumed
  /// [name] The resource name for the service in the
  /// [namespace] The resource name of the namespace this service will belong to.
  /// [serviceId] The Resource ID must be 1-63 characters long, including digits,
  ServiceState({
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? serviceId,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': ?name,
      'namespace': ?namespace,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

