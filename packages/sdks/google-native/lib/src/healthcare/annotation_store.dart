import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_store_args.dart';

/// Creates a new Annotation store within the parent dataset.
class AnnotationStore extends pulumi.CustomResource {
  /// The ID of the Annotation store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final pulumi.Output<String?> annotationStoreId;
  late final pulumi.Output<String> datasetId;

  /// Optional. User-supplied key-value pairs used to organize Annotation stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the Annotation store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [AnnotationStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnnotationStore]. {@macro pulumi_healthcare_v1beta1_annotation_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnnotationStore(
    String name, {
    AnnotationStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:healthcare/v1beta1:AnnotationStore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotationStoreId = registerOutput<String?>('annotationStoreId');
    datasetId = registerOutput<String>('datasetId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
