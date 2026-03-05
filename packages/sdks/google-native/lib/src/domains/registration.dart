import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_settings_response.dart';
import 'dns_settings_response.dart';
import 'management_settings_response.dart';
import 'registration_args.dart';

/// Registers a new domain name and creates a corresponding `Registration` resource. Call `RetrieveRegisterParameters` first to check availability of the domain name and determine parameters like price that are needed to build a call to this method. A successful call creates a `Registration` resource in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes, indicating that the domain was successfully registered. If the resource ends up in state `REGISTRATION_FAILED`, it indicates that the domain was not registered successfully, and you can safely delete the resource and retry registration.
/// Auto-naming is currently not supported for this resource.
class Registration extends pulumi.CustomResource {
  /// Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  late final pulumi.Output<ContactSettingsResponse> contactSettings;
  /// The creation timestamp of the `Registration` resource.
  late final pulumi.Output<String> createTime;
  /// Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  late final pulumi.Output<DnsSettingsResponse> dnsSettings;
  /// Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  late final pulumi.Output<String> domainName;
  /// The expiration timestamp of the `Registration`.
  late final pulumi.Output<String> expireTime;
  /// The set of issues with the `Registration` that require attention.
  late final pulumi.Output<List<String>> issues;
  /// Set of labels associated with the `Registration`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  late final pulumi.Output<ManagementSettingsResponse> managementSettings;
  /// Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  late final pulumi.Output<String> name;
  /// Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  late final pulumi.Output<ContactSettingsResponse> pendingContactSettings;
  late final pulumi.Output<String> project;
  /// The reason the domain registration failed. Only set for domains in REGISTRATION_FAILED state.
  late final pulumi.Output<String> registerFailureReason;
  /// The state of the `Registration`
  late final pulumi.Output<String> state;
  /// Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  late final pulumi.Output<List<String>> supportedPrivacy;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The reason the domain transfer failed. Only set for domains in TRANSFER_FAILED state.
  late final pulumi.Output<String> transferFailureReason;

  /// Creates a new [Registration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registration]. {@macro pulumi_domains_v1_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registration(
    String name, {
    RegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:domains/v1:Registration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactSettings = registerOutput<ContactSettingsResponse>('contactSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dnsSettings = registerOutput<DnsSettingsResponse>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    expireTime = registerOutput<String>('expireTime');
    issues = registerOutput<List<String>>('issues');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    managementSettings = registerOutput<ManagementSettingsResponse>('managementSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagementSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    pendingContactSettings = registerOutput<ContactSettingsResponse>('pendingContactSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    registerFailureReason = registerOutput<String>('registerFailureReason');
    state = registerOutput<String>('state');
    supportedPrivacy = registerOutput<List<String>>('supportedPrivacy');
    transferFailureReason = registerOutput<String>('transferFailureReason');
  }
}
