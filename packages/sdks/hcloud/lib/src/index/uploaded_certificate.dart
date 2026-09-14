import 'package:pulumi/pulumi.dart' as pulumi;
import 'uploaded_certificate_args.dart';
import 'uploaded_certificate_state.dart';

/// Upload a TLS certificate to Hetzner Cloud.
///
/// ## Import
///
/// Uploaded certificates can be imported using their `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/uploadedCertificate:UploadedCertificate example "$CERTIFICATE_ID"
/// ```
class UploadedCertificate extends pulumi.CustomResource {
  /// PEM encoded TLS certificate.
  late final pulumi.Output<String> certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  late final pulumi.Output<String> created;
  /// (list) Domains and subdomains covered by the certificate.
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
  /// PEM encoded private key belonging to the certificate.
  late final pulumi.Output<String> privateKey;
  late final pulumi.Output<String> type;

  /// Creates a new [UploadedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UploadedCertificate]. {@macro pulumi_index_uploaded_certificate_uploaded_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UploadedCertificate(
    String name, {
    UploadedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/uploadedCertificate:UploadedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
          additionalSecretOutputs: const ['privateKey'],
        ) {
    certificate = registerOutput<String>('certificate');
    created = registerOutput<String>('created');
    domainNames = registerOutput<List<String>>('domainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    notValidAfter = registerOutput<String>('notValidAfter');
    notValidBefore = registerOutput<String>('notValidBefore');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    type = registerOutput<String>('type');
  }

  /// Gets an existing [UploadedCertificate] resource's state with the given [name] and [id].
  static UploadedCertificate get(
    String name,
    pulumi.Input<String> id, {
    UploadedCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UploadedCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UploadedCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/uploadedCertificate:UploadedCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    created = registerOutput<String>('created');
    domainNames = registerOutput<List<String>>('domainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    notValidAfter = registerOutput<String>('notValidAfter');
    notValidBefore = registerOutput<String>('notValidBefore');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [UploadedCertificate] resource.
  UploadedCertificate.reference(String urn)
    : super(
        'hcloud:index/uploadedCertificate:UploadedCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['privateKey'],
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate');
    created = registerOutput<String>('created');
    domainNames = registerOutput<List<String>>('domainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    notValidAfter = registerOutput<String>('notValidAfter');
    notValidBefore = registerOutput<String>('notValidBefore');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    type = registerOutput<String>('type');
  }
}
