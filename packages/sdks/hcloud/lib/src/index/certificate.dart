import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Alias for `hcloud.UploadedCertificate` to remain backwards compatible.
/// Deprecated.
class Certificate extends pulumi.CustomResource {
  late final pulumi.Output<String> certificate;
  late final pulumi.Output<String> created;
  late final pulumi.Output<List<String>> domainNames;
  late final pulumi.Output<String> fingerprint;
  late final pulumi.Output<Map<String, String>?> labels;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> notValidAfter;
  late final pulumi.Output<String> notValidBefore;
  late final pulumi.Output<String> privateKey;
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_index_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/certificate:Certificate',
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
    privateKey = registerOutput<String>('privateKey');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/certificate:Certificate',
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
    privateKey = registerOutput<String>('privateKey');
    type = registerOutput<String>('type');
  }
}
