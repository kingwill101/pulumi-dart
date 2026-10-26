import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_args.dart';
import 'resource_record_set_response.dart';

/// Atomically updates the ResourceRecordSet collection.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Change extends pulumi.CustomResource {
  /// Which ResourceRecordSets to add?
  late final pulumi.Output<List<ResourceRecordSetResponse>> additions;
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  late final pulumi.Output<List<ResourceRecordSetResponse>> deletions;
  /// If the DNS queries for the zone will be served.
  late final pulumi.Output<bool> isServing;
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> managedZone;
  late final pulumi.Output<String> project;
  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  late final pulumi.Output<String> startTime;
  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  late final pulumi.Output<String> status;

  /// Creates a new [Change].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Change]. {@macro pulumi_dns_v1_change_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Change(
    String name, {
    ChangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1:Change',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['managedZone', 'project']).merge(options),
        ) {
    additions = registerOutput<List<ResourceRecordSetResponse>>('additions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    clientOperationId = registerOutput<String?>('clientOperationId');
    deletions = registerOutput<List<ResourceRecordSetResponse>>('deletions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isServing = registerOutput<bool>('isServing');
    kind = registerOutput<String>('kind');
    managedZone = registerOutput<String>('managedZone');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [Change] resource.
  Change.reference(String urn)
    : super(
        'google-native:dns/v1:Change',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additions = registerOutput<List<ResourceRecordSetResponse>>('additions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    clientOperationId = registerOutput<String?>('clientOperationId');
    deletions = registerOutput<List<ResourceRecordSetResponse>>('deletions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordSetResponse>(guardedValue, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isServing = registerOutput<bool>('isServing');
    kind = registerOutput<String>('kind');
    managedZone = registerOutput<String>('managedZone');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
  }
}
