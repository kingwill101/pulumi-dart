import 'package:pulumi/pulumi.dart' as pulumi;
import 'detail.dart';
import 'receiver_args.dart';

class Receiver extends pulumi.CustomResource {
  late final pulumi.Output<List<Detail>> details;

  /// Creates a new [Receiver].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Receiver]. {@macro pulumi_index_receiver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Receiver(
    String name, {
    ReceiverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'nestedobject:index:Receiver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
        ) {
    details = registerOutput<List<Detail>>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Detail>(guardedValue, (value) => Detail.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
