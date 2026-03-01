import 'package:pulumi/pulumi.dart' as pulumi;
import 'zip_blob_args.dart';
import 'zip_blob_state.dart';

class ZipBlob extends pulumi.CustomResource {
  late final pulumi.Output<String> accessTier;
  late final pulumi.Output<String?> cacheControl;
  late final pulumi.Output<dynamic> content;
  late final pulumi.Output<String?> contentMd5;
  late final pulumi.Output<String?> contentType;
  late final pulumi.Output<String?> encryptionScope;
  late final pulumi.Output<Map<String, String>> metadata;
  late final pulumi.Output<String> name;
  late final pulumi.Output<int?> parallelism;
  late final pulumi.Output<int?> size;
  late final pulumi.Output<String?> sourceContent;
  late final pulumi.Output<String?> sourceUri;
  late final pulumi.Output<String> storageAccountName;
  late final pulumi.Output<String> storageContainerName;
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> url;

  /// Creates a new [ZipBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZipBlob]. {@macro pulumi_storage_zip_blob_zip_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZipBlob(
    String name, {
    ZipBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/zipBlob:ZipBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String>('accessTier');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<dynamic>('content');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String?>('contentType');
    this.encryptionScope = registerOutput<String?>('encryptionScope');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.parallelism = registerOutput<int?>('parallelism');
    this.size = registerOutput<int?>('size');
    this.sourceContent = registerOutput<String?>('sourceContent');
    this.sourceUri = registerOutput<String?>('sourceUri');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }

  /// Gets an existing [ZipBlob] resource's state with the given [name] and [id].
  static ZipBlob get(
    String name,
    pulumi.Input<String> id, {
    ZipBlobState? state,
  }) {
    return ZipBlob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZipBlob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/zipBlob:ZipBlob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String>('accessTier');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<dynamic>('content');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String?>('contentType');
    this.encryptionScope = registerOutput<String?>('encryptionScope');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.parallelism = registerOutput<int?>('parallelism');
    this.size = registerOutput<int?>('size');
    this.sourceContent = registerOutput<String?>('sourceContent');
    this.sourceUri = registerOutput<String?>('sourceUri');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }
}
