// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The resource name for the service in the
  /// format `projects/*/locations/*/namespaces/*/services/*`.
  final pulumi.Input<String?>? name;
  /// The resource name of the namespace this service will belong to.
  final pulumi.Input<String?>? namespace;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String?>? serviceId;

  /// Creates a new [ServiceState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [metadata] Metadata for the service. This data can be consumed
  /// [name] The resource name for the service in the
  /// [namespace] The resource name of the namespace this service will belong to.
  /// [serviceId] The Resource ID must be 1-63 characters long, including digits,
  const ServiceState({
    this.deletionPolicy,
    this.metadata,
    this.name,
    this.namespace,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'metadata': ?metadata,
      'name': ?name,
      'namespace': ?namespace,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
