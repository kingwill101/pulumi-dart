import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_args.dart';
import 'resource_record_response.dart';
import 'ssl_settings_response.dart';

/// Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
/// Auto-naming is currently not supported for this resource.
class DomainMapping extends pulumi.CustomResource {
  late final pulumi.Output<String> appId;
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  late final pulumi.Output<String> name;
  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  late final pulumi.Output<String?> overrideStrategy;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  late final pulumi.Output<List<ResourceRecordResponse>> resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  late final pulumi.Output<SslSettingsResponse> sslSettings;

  /// Creates a new [DomainMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMapping]. {@macro pulumi_appengine_v1_domain_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['appId']).merge(options),
        ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    overrideStrategy = registerOutput<String?>('overrideStrategy');
    resourceRecords = registerOutput<List<ResourceRecordResponse>>('resourceRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordResponse>(guardedValue, (value) => ResourceRecordResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sslSettings = registerOutput<SslSettingsResponse>('sslSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SslSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DomainMapping] resource.
  DomainMapping.reference(String urn)
    : super(
        'google-native:appengine/v1:DomainMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    overrideStrategy = registerOutput<String?>('overrideStrategy');
    resourceRecords = registerOutput<List<ResourceRecordResponse>>('resourceRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordResponse>(guardedValue, (value) => ResourceRecordResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sslSettings = registerOutput<SslSettingsResponse>('sslSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SslSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
