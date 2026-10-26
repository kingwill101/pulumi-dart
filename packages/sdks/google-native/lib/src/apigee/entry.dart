import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_args.dart';

/// Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
class Entry extends pulumi.CustomResource {
  late final pulumi.Output<String> apiId;
  late final pulumi.Output<String> keyvaluemapId;
  /// Resource URI that can be used to identify the scope of the key value map entries.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Data or payload that is being retrieved and associated with the unique key.
  late final pulumi.Output<String> value;

  /// Creates a new [Entry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entry]. {@macro pulumi_apigee_v1_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entry(
    String name, {
    EntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['apiId', 'keyvaluemapId', 'organizationId']).merge(options),
        ) {
    apiId = registerOutput<String>('apiId');
    keyvaluemapId = registerOutput<String>('keyvaluemapId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [Entry] resource.
  Entry.reference(String urn)
    : super(
        'google-native:apigee/v1:Entry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiId = registerOutput<String>('apiId');
    keyvaluemapId = registerOutput<String>('keyvaluemapId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    value = registerOutput<String>('value');
  }
}
