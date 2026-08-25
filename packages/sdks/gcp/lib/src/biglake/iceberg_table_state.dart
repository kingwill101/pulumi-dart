// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_partition_spec.dart';
import 'iceberg_table_schema.dart';
import 'iceberg_table_sort_order.dart';

/// Input properties used for looking up and filtering IcebergTable resources.
class IcebergTableState {
  /// The name of the IcebergCatalog.
  final pulumi.Input<String?>? catalog;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location of the table.
  final pulumi.Input<String?>? location;
  /// The name of the table.
  final pulumi.Input<String?>? name;
  /// The parent namespace of the table.
  final pulumi.Input<String?>? namespace;
  /// The partition spec of the table.
  /// Structure is documented below.
  final pulumi.Input<IcebergTablePartitionSpec?>? partitionSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// User-defined properties for the table.
  final pulumi.Input<Map<String, String>?>? properties;
  /// The schema of the table.
  /// Structure is documented below.
  final pulumi.Input<IcebergTableSchema?>? schema;
  /// The sort order of the table.
  /// Structure is documented below.
  final pulumi.Input<IcebergTableSortOrder?>? sortOrder;

  /// Creates a new [IcebergTableState].
  /// [catalog] The name of the IcebergCatalog.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the table.
  /// [name] The name of the table.
  /// [namespace] The parent namespace of the table.
  /// [partitionSpec] The partition spec of the table.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] User-defined properties for the table.
  /// [schema] The schema of the table.
  /// [sortOrder] The sort order of the table.
  const IcebergTableState({
    this.catalog,
    this.deletionPolicy,
    this.location,
    this.name,
    this.namespace,
    this.partitionSpec,
    this.project,
    this.properties,
    this.schema,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'namespace': ?namespace,
      'partitionSpec': ?pulumi.Input.mapOptionalInputValue<IcebergTablePartitionSpec, Map<String, dynamic>>(partitionSpec, (value) => value.toMap()),
      'project': ?project,
      'properties': ?properties,
      'schema': ?pulumi.Input.mapOptionalInputValue<IcebergTableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'sortOrder': ?pulumi.Input.mapOptionalInputValue<IcebergTableSortOrder, Map<String, dynamic>>(sortOrder, (value) => value.toMap()),
    };
  }

  factory IcebergTableState.fromMap(Map<String, dynamic> map) {
    return IcebergTableState(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionSpec: (() { final guardedValue = map['partitionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergTablePartitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergTableSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IcebergTableSortOrder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
