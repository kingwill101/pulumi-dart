import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> private;
  late final pulumi.Output<List<String>> privateArray;
  late final pulumi.Output<Data> privateData;
  late final pulumi.Output<List<Map<String, dynamic>>> privateDataArray;
  late final pulumi.Output<Map<String, Data>> privateDataMap;
  late final pulumi.Output<Map<String, String>> privateMap;
  late final pulumi.Output<String> public;
  late final pulumi.Output<Data> publicData;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'secret:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          additionalSecretOutputs: const ['private', 'privateArray', 'privateData', 'privateDataArray', 'privateDataMap', 'privateMap'],
        ) {
    private = registerOutput<String>('private', isSecret: true);
    privateArray = registerOutput<List<String>>('privateArray', isSecret: true);
    privateData = registerOutput<Data>('privateData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Data.fromMap((guardedValue as Map).cast<String, dynamic>()); }, isSecret: true);
    privateDataArray = registerOutput<List<Map<String, dynamic>>>('privateDataArray', isSecret: true);
    privateDataMap = registerOutput<Map<String, Data>>('privateDataMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Data>(guardedValue, (value) => Data.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    privateMap = registerOutput<Map<String, String>>('privateMap', isSecret: true);
    public = registerOutput<String>('public');
    publicData = registerOutput<Data>('publicData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Data.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
