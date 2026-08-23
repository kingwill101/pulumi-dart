// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_catalog_table_options_storage_descriptor.dart';

class TableExternalCatalogTableOptions {
  /// The connection specifying the credentials to be
  /// used to read external storage, such as Azure Blob, Cloud Storage, or S3. The
  /// connection is needed to read the open source table from BigQuery Engine. The
  /// connectionId can have the form `&lt;project_id&gt;.&lt;location_id&gt;.&lt;connection_id&gt;`
  /// or `projects/&lt;project_id&gt;/locations/&lt;location_id&gt;/connections/&lt;connection_id&gt;`.
  final pulumi.Input<String>? connectionId;
  /// A map of key value pairs defining the parameters and
  /// properties of the open source table. Corresponds with hive meta store table
  /// parameters. Maximum size of 4Mib.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A storage descriptor containing information
  /// about the physical storage of this table. Structure is documented below.
  final pulumi.Input<TableExternalCatalogTableOptionsStorageDescriptor>? storageDescriptor;

  /// Creates a new [TableExternalCatalogTableOptions].
  /// [connectionId] The connection specifying the credentials to be
  /// [parameters] A map of key value pairs defining the parameters and
  /// [storageDescriptor] A storage descriptor containing information
  const TableExternalCatalogTableOptions({
    this.connectionId,
    this.parameters,
    this.storageDescriptor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'parameters': ?parameters,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<TableExternalCatalogTableOptionsStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
    };
  }

  factory TableExternalCatalogTableOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalCatalogTableOptions(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storageDescriptor: (() { final guardedValue = map['storageDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalCatalogTableOptionsStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
