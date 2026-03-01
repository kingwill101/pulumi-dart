import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';

/// Creates a new catalog.
/// Auto-naming is currently not supported for this resource.
class Catalog extends pulumi.CustomResource {
  /// Required. The ID to use for the catalog, which will become the final component of the catalog's resource name.
  late final pulumi.Output<String> catalogId;
  /// The creation time of the catalog.
  late final pulumi.Output<String> createTime;
  /// The deletion time of the catalog. Only set after the catalog is deleted.
  late final pulumi.Output<String> deleteTime;
  /// The time when this catalog is considered expired. Only set after the catalog is deleted.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The last modification time of the catalog.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_biglake_v1_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:biglake/v1:Catalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
