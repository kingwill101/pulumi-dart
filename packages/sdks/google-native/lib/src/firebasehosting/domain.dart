import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_provisioning_response.dart';
import 'domain_redirect_response.dart';

/// Creates a domain mapping on the specified site.
/// Auto-naming is currently not supported for this resource.
class Domain extends pulumi.CustomResource {
  /// The domain name of the association.
  late final pulumi.Output<String> domainName;
  /// If set, the domain should redirect with the provided parameters.
  late final pulumi.Output<DomainRedirectResponse> domainRedirect;
  late final pulumi.Output<String> project;
  /// Information about the provisioning of certificates and the health of the DNS resolution for the domain.
  late final pulumi.Output<DomainProvisioningResponse> provisioning;
  /// The site name of the association.
  late final pulumi.Output<String> site;
  late final pulumi.Output<String> siteId;
  /// Additional status of the domain association.
  late final pulumi.Output<String> status;
  /// The time at which the domain was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_firebasehosting_v1beta1_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    domainRedirect = registerOutput<DomainRedirectResponse>('domainRedirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainRedirectResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    provisioning = registerOutput<DomainProvisioningResponse>('provisioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    site = registerOutput<String>('site');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
    updateTime = registerOutput<String>('updateTime');
  }
}
