import 'package:pulumi/pulumi.dart' as pulumi;
import 'samlargs.dart';

/// Updates the SAML configuration for a SAML-backed organization, including the identity provider SSO descriptor, attribute mappings, and other SAML settings. The new IDP SSO descriptor is required in the update request.
class SAML extends pulumi.CustomResource {
  /// The following fields can be empty if the metadata (IDPSSODescriptor)
  /// itself is empty for the organization.
  late final pulumi.Output<String?> entityId;
  /// The SAML Identity Provider SSO descriptor XML.
  late final pulumi.Output<String> idpSsoDescriptor;
  /// The SAML NameID format used by the identity provider.
  late final pulumi.Output<String?> nameIdFormat;
  /// The Pulumi organization.
  late final pulumi.Output<dynamic> organization;
  /// The SSO URL for the identity provider.
  late final pulumi.Output<String?> ssoUrl;
  /// ValidUntil is the date until which the X.509 Certificate
  /// issued to the organization by the identity provider is valid.
  late final pulumi.Output<String?> validUntil;
  /// ValidationError will be set only if there is an error validating the SAML org's metadata XML.
  late final pulumi.Output<String?> validationError;

  /// Creates a new [SAML].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SAML]. {@macro pulumi_api_auth_samlargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  SAML(
    String name, {
    SAMLArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/auth:SAML',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entityId = registerOutput<String?>('entityId');
    idpSsoDescriptor = registerOutput<String>('idpSsoDescriptor');
    nameIdFormat = registerOutput<String?>('nameIdFormat');
    organization = registerOutput<dynamic>('organization');
    ssoUrl = registerOutput<String?>('ssoUrl');
    validUntil = registerOutput<String?>('validUntil');
    validationError = registerOutput<String?>('validationError');
  }
}
