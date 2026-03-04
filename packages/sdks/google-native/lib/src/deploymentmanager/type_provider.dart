import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_response.dart';
import 'operation_response.dart';
import 'options_response.dart';
import 'type_provider_args.dart';

/// Creates a type provider.
class TypeProvider extends pulumi.CustomResource {
  /// Allows resource handling overrides for specific collections
  late final pulumi.Output<List<Map<String, dynamic>>> collectionOverrides;

  /// Credential used when interacting with this type.
  late final pulumi.Output<CredentialResponse> credential;

  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  late final pulumi.Output<List<String>> customCertificateAuthorityRoots;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final pulumi.Output<String> description;

  /// Descriptor Url for the this type provider.
  late final pulumi.Output<String> descriptorUrl;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> insertTime;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  late final pulumi.Output<List<Map<String, dynamic>>> labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The Operation that most recently ran, or is currently running, on this type provider.
  late final pulumi.Output<OperationResponse> operation;

  /// Options to apply when handling any resources in this service.
  late final pulumi.Output<OptionsResponse> options;
  late final pulumi.Output<String> project;

  /// Self link for the type provider.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [TypeProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TypeProvider]. {@macro pulumi_deploymentmanager_alpha_type_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TypeProvider(
    String name, {
    TypeProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:deploymentmanager/alpha:TypeProvider',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    collectionOverrides = registerOutput<List<Map<String, dynamic>>>(
      'collectionOverrides',
    );
    credential = registerOutput<CredentialResponse>('credential');
    customCertificateAuthorityRoots = registerOutput<List<String>>(
      'customCertificateAuthorityRoots',
    );
    description = registerOutput<String>('description');
    descriptorUrl = registerOutput<String>('descriptorUrl');
    insertTime = registerOutput<String>('insertTime');
    labels = registerOutput<List<Map<String, dynamic>>>('labels');
    this.name = registerOutput<String>('name');
    operation = registerOutput<OperationResponse>('operation');
    this.options = registerOutput<OptionsResponse>('options');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
  }
}
