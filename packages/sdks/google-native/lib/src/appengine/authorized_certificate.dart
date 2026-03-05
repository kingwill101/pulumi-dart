import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_certificate_args.dart';
import 'certificate_raw_data_response.dart';
import 'managed_certificate_response.dart';

/// Uploads the specified SSL certificate.
/// Auto-naming is currently not supported for this resource.
class AuthorizedCertificate extends pulumi.CustomResource {
  late final pulumi.Output<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  late final pulumi.Output<CertificateRawDataResponse> certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  late final pulumi.Output<String> displayName;

  /// Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  late final pulumi.Output<int> domainMappingsCount;

  /// Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.
  late final pulumi.Output<List<String>> domainNames;

  /// The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.
  late final pulumi.Output<String> expireTime;

  /// Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.
  late final pulumi.Output<ManagedCertificateResponse> managedCertificate;

  /// Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.
  late final pulumi.Output<String> name;

  /// The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  late final pulumi.Output<List<String>> visibleDomainMappings;

  /// Creates a new [AuthorizedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizedCertificate]. {@macro pulumi_appengine_v1_authorized_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizedCertificate(
    String name, {
    AuthorizedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:appengine/v1:AuthorizedCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    certificateRawData = registerOutput<CertificateRawDataResponse>(
      'certificateRawData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateRawDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    displayName = registerOutput<String>('displayName');
    domainMappingsCount = registerOutput<int>('domainMappingsCount');
    domainNames = registerOutput<List<String>>('domainNames');
    expireTime = registerOutput<String>('expireTime');
    managedCertificate = registerOutput<ManagedCertificateResponse>(
      'managedCertificate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedCertificateResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    visibleDomainMappings = registerOutput<List<String>>(
      'visibleDomainMappings',
    );
  }
}
