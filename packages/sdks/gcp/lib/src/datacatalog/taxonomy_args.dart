// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_taxonomy_taxonomy_args_doc}
/// The set of arguments for Taxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_taxonomy_taxonomy_args_doc}
class TaxonomyArgs {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  final pulumi.Input<List<String>?>? activatedPolicyTypes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  final pulumi.Input<String?>? description;
  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  final pulumi.Input<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Taxonomy location region.
  final pulumi.Input<String?>? region;

  /// Creates a new [TaxonomyArgs].
  /// [activatedPolicyTypes] A list of policy types that are activated for this taxonomy. If not set,
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of this taxonomy. It must: contain only unicode characters,
  /// [displayName] User defined name of this taxonomy.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Taxonomy location region.
  const TaxonomyArgs({
    this.activatedPolicyTypes,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?activatedPolicyTypes,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return TaxonomyArgs(
      activatedPolicyTypes: (() { final guardedValue = map['activatedPolicyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
