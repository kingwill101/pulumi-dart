// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_catalog_table_option_storage_descriptor.dart';

class GetTableExternalCatalogTableOption {
  /// The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connection is needed to read the open source table from BigQuery Engine. The connection_id can have the form &lt;project_id&gt;.&lt;location_id&gt;.&lt;connection_id&gt; or projects/&lt;project_id&gt;/locations/&lt;location_id&gt;/connections/&lt;connection_id&gt;.
  final pulumi.Input<String> connectionId;

  /// A map of key value pairs defining the parameters and properties of the open source table. Corresponds with hive meta store table parameters. Maximum size of 4Mib.
  final pulumi.Input<Map<String, String>> parameters;

  /// A storage descriptor containing information about the physical storage of this table.
  final pulumi.Input<List<GetTableExternalCatalogTableOptionStorageDescriptor>>
  storageDescriptors;

  /// Creates a new [GetTableExternalCatalogTableOption].
  /// [connectionId] The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connection is needed to read the open source table from BigQuery Engine. The connection_id can have the form &lt;project_id&gt;.&lt;location_id&gt;.&lt;connection_id&gt; or projects/&lt;project_id&gt;/locations/&lt;location_id&gt;/connections/&lt;connection_id&gt;.
  /// [parameters] A map of key value pairs defining the parameters and properties of the open source table. Corresponds with hive meta store table parameters. Maximum size of 4Mib.
  /// [storageDescriptors] A storage descriptor containing information about the physical storage of this table.
  GetTableExternalCatalogTableOption({
    required this.connectionId,
    required this.parameters,
    required this.storageDescriptors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'parameters': parameters,
      'storageDescriptors':
          pulumi.Input.mapInputValue<
            List<GetTableExternalCatalogTableOptionStorageDescriptor>,
            List<Map<String, dynamic>>
          >(
            storageDescriptors,
            (value) =>
                pulumi.Input.encodeList<
                  GetTableExternalCatalogTableOptionStorageDescriptor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetTableExternalCatalogTableOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalCatalogTableOption(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      parameters: pulumi.Input.fromValue(
        (map['parameters'] as Map).cast<String, String>(),
      ),
      storageDescriptors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetTableExternalCatalogTableOptionStorageDescriptor
        >(
          map['storageDescriptors']!,
          (value) =>
              GetTableExternalCatalogTableOptionStorageDescriptor.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
