// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_data_share_properties.dart';

/// {@template pulumi_storage_data_share_args_doc}
/// The set of arguments for DataShare.
/// {@endtemplate}
/// {@macro pulumi_storage_data_share_args_doc}
class DataShareArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the Storage DataShare.
  final pulumi.Input<String?>? dataShareName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The properties of the Storage DataShare.
  final pulumi.Input<StorageDataShareProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DataShareArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [dataShareName] The name of the Storage DataShare.
  /// [location] The geo-location where the resource lives
  /// [properties] The properties of the Storage DataShare.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const DataShareArgs({
    required this.accountName,
    this.dataShareName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataShareName': ?dataShareName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<StorageDataShareProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DataShareArgs.fromMap(Map<String, dynamic> map) {
    return DataShareArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataShareName: (() { final guardedValue = map['dataShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(StorageDataShareProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
