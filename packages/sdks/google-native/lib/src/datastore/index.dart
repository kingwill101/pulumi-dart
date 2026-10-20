import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property_response.dart';
import 'index_args.dart';

/// Creates the specified index. A newly created index's initial state is `CREATING`. On completion of the returned google.longrunning.Operation, the state will be `READY`. If the index already exists, the call will return an `ALREADY_EXISTS` status. During index creation, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single property cannot be created.
/// Auto-naming is currently not supported for this resource.
class Index extends pulumi.CustomResource {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  late final pulumi.Output<String> ancestor;
  /// The resource ID of the index.
  late final pulumi.Output<String> indexId;
  /// The entity kind to which this index applies.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> project;
  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  late final pulumi.Output<List<GoogleDatastoreAdminV1IndexedPropertyResponse>> properties;
  /// The state of the index.
  late final pulumi.Output<String> state;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_datastore_v1_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datastore/v1:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project']).merge(options),
        ) {
    ancestor = registerOutput<String>('ancestor');
    indexId = registerOutput<String>('indexId');
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    properties = registerOutput<List<GoogleDatastoreAdminV1IndexedPropertyResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleDatastoreAdminV1IndexedPropertyResponse>(guardedValue, (value) => GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [Index] resource.
  Index.reference(String urn)
    : super(
        'google-native:datastore/v1:Index',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    ancestor = registerOutput<String>('ancestor');
    indexId = registerOutput<String>('indexId');
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    properties = registerOutput<List<GoogleDatastoreAdminV1IndexedPropertyResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleDatastoreAdminV1IndexedPropertyResponse>(guardedValue, (value) => GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }
}
