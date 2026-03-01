import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_appengine_v1beta_args.dart';
import 'resource_record_response_appengine_v1beta.dart';
import 'ssl_settings_response_appengine_v1beta.dart';

/// Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
/// Auto-naming is currently not supported for this resource.
class DomainMappingAppengineV1beta extends pulumi.CustomResource {
  late final pulumi.Output<String> appId;
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  late final pulumi.Output<String> name;
  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  late final pulumi.Output<String?> overrideStrategy;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  late final pulumi.Output<List<ResourceRecordResponseAppengineV1beta>> resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  late final pulumi.Output<SslSettingsResponseAppengineV1beta> sslSettings;

  /// Creates a new [DomainMappingAppengineV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMappingAppengineV1beta]. {@macro pulumi_appengine_v1beta_domain_mapping_appengine_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMappingAppengineV1beta(
    String name, {
    DomainMappingAppengineV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1beta:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.overrideStrategy = registerOutput<String?>('overrideStrategy');
    this.resourceRecords = registerOutput<List<ResourceRecordResponseAppengineV1beta>>('resourceRecords');
    this.sslSettings = registerOutput<SslSettingsResponseAppengineV1beta>('sslSettings');
  }
}
