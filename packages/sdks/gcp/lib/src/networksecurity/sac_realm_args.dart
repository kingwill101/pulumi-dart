// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_realm_symantec_options.dart';

/// {@template pulumi_networksecurity_sac_realm_sac_realm_args_doc}
/// The set of arguments for SacRealm.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_sac_realm_sac_realm_args_doc}
class SacRealmArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Identifier. Resource name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// SSE service provider associated with the realm.
  /// Possible values are: `SECURITY_SERVICE_UNSPECIFIED`, `PALO_ALTO_PRISMA_ACCESS`, `SYMANTEC_CLOUD_SWG`.
  final pulumi.Input<String> securityService;
  /// Configuration required for Symantec realms.
  /// Structure is documented below.
  final pulumi.Input<SacRealmSymantecOptions>? symantecOptions;

  /// Creates a new [SacRealmArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Identifier. Resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [securityService] SSE service provider associated with the realm.
  /// [symantecOptions] Configuration required for Symantec realms.
  const SacRealmArgs({
    this.deletionPolicy,
    this.labels,
    this.name,
    this.project,
    required this.securityService,
    this.symantecOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'securityService': securityService,
      'symantecOptions': ?pulumi.Input.mapOptionalInputValue<SacRealmSymantecOptions, Map<String, dynamic>>(symantecOptions, (value) => value.toMap()),
    };
  }

  factory SacRealmArgs.fromMap(Map<String, dynamic> map) {
    return SacRealmArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityService: pulumi.Input.fromValue(map['securityService'] as String),
      symantecOptions: (() { final guardedValue = map['symantecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SacRealmSymantecOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
