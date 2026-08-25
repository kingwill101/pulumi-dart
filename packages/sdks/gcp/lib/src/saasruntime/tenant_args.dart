// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_saasruntime_tenant_tenant_args_doc}
/// The set of arguments for Tenant.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_tenant_tenant_args_doc}
class TenantArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// A reference to the consumer resource this SaaS Tenant is representing.
  /// The relationship with a consumer resource can be used by App Lifecycle Manager for
  /// retrieving consumer-defined settings and policies such as maintenance
  /// policies (using Unified Maintenance Policy API).
  final pulumi.Input<String?>? consumerResource;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with App Lifecycle Manager. Part of the
  /// App Lifecycle Manager common data model.
  final pulumi.Input<String> saas;
  /// The ID value for the new tenant.
  final pulumi.Input<String> tenantId;

  /// Creates a new [TenantArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [consumerResource] A reference to the consumer resource this SaaS Tenant is representing.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [saas] A reference to the Saas that defines the product (managed service) that
  /// [tenantId] The ID value for the new tenant.
  const TenantArgs({
    this.annotations,
    this.consumerResource,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    required this.saas,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'consumerResource': ?consumerResource,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'saas': saas,
      'tenantId': tenantId,
    };
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      consumerResource: (() { final guardedValue = map['consumerResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saas: pulumi.Input.fromValue(map['saas'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
