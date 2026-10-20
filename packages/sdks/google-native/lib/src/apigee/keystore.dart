import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystore_args.dart';

/// Creates a keystore or truststore. - Keystore: Contains certificates and their associated keys. - Truststore: Contains trusted certificates used to validate a server's certificate. These certificates are typically self-signed certificates or certificates that are not signed by a trusted CA.
class Keystore extends pulumi.CustomResource {
  /// Aliases in this keystore.
  late final pulumi.Output<List<String>> aliases;
  late final pulumi.Output<String> environmentId;
  /// Optional. Name of the keystore. Overrides the value in Keystore.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [Keystore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Keystore]. {@macro pulumi_apigee_v1_keystore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Keystore(
    String name, {
    KeystoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Keystore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['environmentId', 'organizationId']).merge(options),
        ) {
    aliases = registerOutput<List<String>>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }

  /// Creates a typed reference to an existing [Keystore] resource.
  Keystore.reference(String urn)
    : super(
        'google-native:apigee/v1:Keystore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aliases = registerOutput<List<String>>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }
}
