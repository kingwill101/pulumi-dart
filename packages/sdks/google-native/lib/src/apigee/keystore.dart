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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aliases = registerOutput<List<String>>('aliases');
    environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
  }
}
