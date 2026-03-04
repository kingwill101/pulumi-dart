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
      'accessGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataProductAccessGroup>,
            List<Map<String, dynamic>>
          >(
            accessGroups,
            (value) =>
                pulumi.Input.encodeList<
                  DataProductAccessGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accessGroups: (() {
        final guardedValue = map['accessGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataProductAccessGroup>(
            guardedValue,
            (value) => DataProductAccessGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dataProductId: pulumi.Input.fromValue(map['dataProductId'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      ownerEmails: pulumi.Input.fromValue(
        (map['ownerEmails'] as List).cast<String>(),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
