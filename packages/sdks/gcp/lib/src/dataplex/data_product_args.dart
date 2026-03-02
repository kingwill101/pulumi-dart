// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group.dart';

/// {@template pulumi_dataplex_data_product_data_product_args_doc}
/// The set of arguments for DataProduct.
/// {@endtemplate}
/// {@macro pulumi_dataplex_data_product_data_product_args_doc}
class DataProductArgs {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductAccessGroup>>? accessGroups;
  /// The ID of the data product.
  final pulumi.Input<String> dataProductId;
  /// Description of the data product.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String> displayName;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the data product.
  final pulumi.Input<String> location;
  /// Emails of the owners.
  final pulumi.Input<List<String>> ownerEmails;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataProductArgs].
  /// [accessGroups] Custom user defined access groups at the data product level.
  /// [dataProductId] The ID of the data product.
  /// [description] Description of the data product.
  /// [displayName] User-friendly display name.
  /// [labels] User-defined labels.
  /// [location] The location for the data product.
  /// [ownerEmails] Emails of the owners.
  /// [project] The ID of the project in which the resource belongs.
  DataProductArgs({
    this.accessGroups,
    required this.dataProductId,
    this.description,
    required this.displayName,
    this.labels,
    required this.location,
    required this.ownerEmails,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroups': ?pulumi.Input.mapOptionalInputValue<List<DataProductAccessGroup>, List<Map<String, dynamic>>>(accessGroups, (value) => pulumi.Input.encodeList<DataProductAccessGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataProductId': dataProductId,
      'description': ?description,
      'displayName': displayName,
      'labels': ?labels,
      'location': location,
      'ownerEmails': ownerEmails,
      'project': ?project,
    };
  }

  factory DataProductArgs.fromMap(Map<String, dynamic> map) {
    return DataProductArgs(
      accessGroups: map['accessGroups'] == null ? null : (pulumi.Input.decodeList<DataProductAccessGroup>(map['accessGroups']!, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataProductId: (map['dataProductId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      ownerEmails: ((map['ownerEmails'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

