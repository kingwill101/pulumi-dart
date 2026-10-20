import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field_response.dart';
import 'index_firestore_v1beta1_args.dart';

/// Creates the specified index. A newly created index's initial state is `CREATING`. On completion of the returned google.longrunning.Operation, the state will be `READY`. If the index already exists, the call will return an `ALREADY_EXISTS` status. During creation, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single field cannot be created.
class IndexFirestoreV1beta1 extends pulumi.CustomResource {
  /// The collection ID to which this index applies. Required.
  late final pulumi.Output<String> collectionId;
  late final pulumi.Output<String> databaseId;
  /// The fields to index.
  late final pulumi.Output<List<GoogleFirestoreAdminV1beta1IndexFieldResponse>> fields;
  /// The resource name of the index. Output only.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The state of the index. Output only.
  late final pulumi.Output<String> state;

  /// Creates a new [IndexFirestoreV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndexFirestoreV1beta1]. {@macro pulumi_firestore_v1beta1_index_firestore_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndexFirestoreV1beta1(
    String name, {
    IndexFirestoreV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1beta1:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['databaseId', 'project']).merge(options),
        ) {
    collectionId = registerOutput<String>('collectionId');
    databaseId = registerOutput<String>('databaseId');
    fields = registerOutput<List<GoogleFirestoreAdminV1beta1IndexFieldResponse>>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse>(guardedValue, (value) => GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [IndexFirestoreV1beta1] resource.
  IndexFirestoreV1beta1.reference(String urn)
    : super(
        'google-native:firestore/v1beta1:Index',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    collectionId = registerOutput<String>('collectionId');
    databaseId = registerOutput<String>('databaseId');
    fields = registerOutput<List<GoogleFirestoreAdminV1beta1IndexFieldResponse>>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse>(guardedValue, (value) => GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }
}
