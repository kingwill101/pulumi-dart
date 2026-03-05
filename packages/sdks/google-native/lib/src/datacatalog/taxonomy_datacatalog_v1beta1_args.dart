// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_activated_policy_types_item_datacatalog_v1beta1.dart';

/// {@template pulumi_datacatalog_v1beta1_taxonomy_datacatalog_v1beta1_args_doc}
/// The set of arguments for Taxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_taxonomy_datacatalog_v1beta1_args_doc}
class TaxonomyDatacatalogV1beta1Args {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final pulumi.Input<List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>>? activatedPolicyTypes;
  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  final pulumi.Input<String>? description;
  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [TaxonomyDatacatalogV1beta1Args].
  /// [activatedPolicyTypes] Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  /// [description] Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  /// [displayName] User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  /// [location] Optional.
  /// [project] Optional.
  TaxonomyDatacatalogV1beta1Args({
    this.activatedPolicyTypes,
    this.description,
    required this.displayName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?pulumi.Input.mapOptionalInputValue<List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>, List<String>>(activatedPolicyTypes, (value) => pulumi.Input.encodeList<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1, String>(value, (value) => value.wireValue)),
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory TaxonomyDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TaxonomyDatacatalogV1beta1Args(
      activatedPolicyTypes: (() { final guardedValue = map['activatedPolicyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>(guardedValue, (value) => TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1.fromValue(value as String))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

