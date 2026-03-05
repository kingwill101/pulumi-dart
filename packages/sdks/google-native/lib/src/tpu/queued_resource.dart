import 'package:pulumi/pulumi.dart' as pulumi;
import 'guaranteed_response.dart';
import 'queued_resource_args.dart';
import 'queued_resource_state_response.dart';
import 'queueing_policy_response.dart';
import 'tpu_response.dart';

/// Creates a QueuedResource TPU instance.
/// Auto-naming is currently not supported for this resource.
class QueuedResource extends pulumi.CustomResource {
  /// The BestEffort tier.
  late final pulumi.Output<Map<String, dynamic>> bestEffort;

  /// The time when the QueuedResource was created.
  late final pulumi.Output<String> createTime;

  /// The Guaranteed tier.
  late final pulumi.Output<GuaranteedResponse> guaranteed;
  late final pulumi.Output<String> location;

  /// Immutable. The name of the QueuedResource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  late final pulumi.Output<String?> queuedResourceId;

  /// The queueing policy of the QueuedRequest.
  late final pulumi.Output<QueueingPolicyResponse> queueingPolicy;

  /// Idempotent request UUID.
  late final pulumi.Output<String?> requestId;

  /// Name of the reservation in which the resource should be provisioned. Format: projects/{project}/locations/{zone}/reservations/{reservation}
  late final pulumi.Output<String> reservationName;

  /// Optional. The Spot tier.
  late final pulumi.Output<Map<String, dynamic>> spot;

  /// State of the QueuedResource request.
  late final pulumi.Output<QueuedResourceStateResponse> state;

  /// Defines a TPU resource.
  late final pulumi.Output<TpuResponse> tpu;

  /// Creates a new [QueuedResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueuedResource]. {@macro pulumi_tpu_v2alpha1_queued_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueuedResource(
    String name, {
    QueuedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:tpu/v2alpha1:QueuedResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bestEffort = registerOutput<Map<String, dynamic>>('bestEffort');
    createTime = registerOutput<String>('createTime');
    guaranteed = registerOutput<GuaranteedResponse>(
      'guaranteed',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GuaranteedResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    queuedResourceId = registerOutput<String?>('queuedResourceId');
    queueingPolicy = registerOutput<QueueingPolicyResponse>(
      'queueingPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return QueueingPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    requestId = registerOutput<String?>('requestId');
    reservationName = registerOutput<String>('reservationName');
    spot = registerOutput<Map<String, dynamic>>('spot');
    state = registerOutput<QueuedResourceStateResponse>(
      'state',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return QueuedResourceStateResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tpu = registerOutput<TpuResponse>(
      'tpu',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TpuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
