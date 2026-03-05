import 'package:pulumi/pulumi.dart' as pulumi;
import 'hmac_key_args.dart';

/// Creates a new HMAC key for the specified service account.
/// Auto-naming is currently not supported for this resource.
class HmacKey extends pulumi.CustomResource {
  /// The ID of the HMAC Key.
  late final pulumi.Output<String> accessId;
  /// HTTP 1.1 Entity tag for the HMAC key.
  late final pulumi.Output<String> etag;
  /// The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> project;
  /// The link to this resource.
  late final pulumi.Output<String> selfLink;
  /// Email address of the service account.
  late final pulumi.Output<String> serviceAccountEmail;
  /// The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  late final pulumi.Output<String> state;
  /// The creation time of the HMAC key in RFC 3339 format.
  late final pulumi.Output<String> timeCreated;
  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  late final pulumi.Output<String> updated;
  /// The project to be billed for this request.
  late final pulumi.Output<String?> userProject;

  /// Creates a new [HmacKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HmacKey]. {@macro pulumi_storage_v1_hmac_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HmacKey(
    String name, {
    HmacKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:HmacKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessId = registerOutput<String>('accessId');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    state = registerOutput<String>('state');
    timeCreated = registerOutput<String>('timeCreated');
    updated = registerOutput<String>('updated');
    userProject = registerOutput<String?>('userProject');
  }
}
