import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_certificate_args.dart';
import 'managed_certificate_state.dart';

/// Obtain a Hetzner Cloud managed TLS certificate.
///
/// ## Import
///
/// Managed certificates can be imported using their `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/managedCertificate:ManagedCertificate example "$CERTIFICATE_ID"
/// ```
class ManagedCertificate extends pulumi.CustomResource {
  /// (string) PEM encoded TLS certificate.
  late final pulumi.Output<String> certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  late final pulumi.Output<String> created;
  /// Domain names for which a certificate
  /// should be obtained.
  late final pulumi.Output<List<String>> domainNames;
  /// (string) Fingerprint of the certificate.
  late final pulumi.Output<String> fingerprint;
  /// User-defined labels (key-value pairs) the
  /// certificate should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the Certificate.
  late final pulumi.Output<String> name;
  /// (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  late final pulumi.Output<String> notValidAfter;
  /// (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  late final pulumi.Output<String> notValidBefore;
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCertificate]. {@macro pulumi_index_managed_certificate_managed_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCertificate(
    String name, {
    ManagedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/managedCertificate:ManagedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    created = registerOutput<String>('created');
    domainNames = registerOutput<List<String>>('domainNames');
    fingerprint = registerOutput<String>('fingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    notValidAfter = registerOutput<String>('notValidAfter');
    notValidBefore = registerOutput<String>('notValidBefore');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ManagedCertificate] resource's state with the given [name] and [id].
  static ManagedCertificate get(
    String name,
    pulumi.Input<String> id, {
    ManagedCertificateState? state,
  }) {
    return ManagedCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/managedCertificate:ManagedCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    created = registerOutput<String>('created');
    domainNames = registerOutput<List<String>>('domainNames');
    fingerprint = registerOutput<String>('fingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    notValidAfter = registerOutput<String>('notValidAfter');
    notValidBefore = registerOutput<String>('notValidBefore');
    type = registerOutput<String>('type');
  }
}
