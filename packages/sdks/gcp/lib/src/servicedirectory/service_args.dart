// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_service_service_args_doc}
class ServiceArgs {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The resource name of the namespace this service will belong to.
  final pulumi.Input<String> namespace;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String> serviceId;

  /// Creates a new [ServiceArgs].
  /// [metadata] Metadata for the service. This data can be consumed
  /// [namespace] The resource name of the namespace this service will belong to.
  /// [serviceId] The Resource ID must be 1-63 characters long, including digits,
  ServiceArgs({
    this.metadata,
    required this.namespace,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'namespace': namespace,
      'serviceId': serviceId,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      namespace: (map['namespace'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

