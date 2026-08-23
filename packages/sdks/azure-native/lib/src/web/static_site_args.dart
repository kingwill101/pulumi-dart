// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'sku_description.dart';
import 'staging_environment_policy.dart';
import 'static_site_build_properties.dart';
import 'static_site_template_options.dart';

/// {@template pulumi_web_static_site_args_doc}
/// The set of arguments for StaticSite.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_args_doc}
class StaticSiteArgs {
  /// &lt;code&gt;false&lt;/code&gt; if config file is locked for this static web app; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? allowConfigFileUpdates;
  /// The target branch in the repository.
  final pulumi.Input<String>? branch;
  /// Build properties to configure on the repository.
  final pulumi.Input<StaticSiteBuildProperties>? buildProperties;
  /// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
  final pulumi.Input<String>? enterpriseGradeCdnStatus;
  /// Managed service identity.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the static site.
  final pulumi.Input<String>? name;
  /// The provider that submitted the last deployment to the primary environment of the static site.
  final pulumi.Input<String>? provider;
  /// State indicating whether public traffic are allowed or not for a static web app. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  final pulumi.Input<String>? publicNetworkAccess;
  /// A user's github repository token. This is used to setup the Github Actions workflow file and API secrets.
  final pulumi.Input<String>? repositoryToken;
  /// URL for the repository of the static site.
  final pulumi.Input<String>? repositoryUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Description of a SKU for a scalable resource.
  final pulumi.Input<SkuDescription>? sku;
  /// State indicating whether staging environments are allowed or not allowed for a static web app.
  final pulumi.Input<StagingEnvironmentPolicy>? stagingEnvironmentPolicy;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Template options for generating a new repository.
  final pulumi.Input<StaticSiteTemplateOptions>? templateProperties;

  /// Creates a new [StaticSiteArgs].
  /// [allowConfigFileUpdates] &lt;code&gt;false&lt;/code&gt; if config file is locked for this static web app; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [branch] The target branch in the repository.
  /// [buildProperties] Build properties to configure on the repository.
  /// [enterpriseGradeCdnStatus] State indicating the status of the enterprise grade CDN serving traffic to the static web app.
  /// [identity] Managed service identity.
  /// [kind] Kind of resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of the static site.
  /// [provider] The provider that submitted the last deployment to the primary environment of the static site.
  /// [publicNetworkAccess] State indicating whether public traffic are allowed or not for a static web app. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  /// [repositoryToken] A user's github repository token. This is used to setup the Github Actions workflow file and API secrets.
  /// [repositoryUrl] URL for the repository of the static site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Description of a SKU for a scalable resource.
  /// [stagingEnvironmentPolicy] State indicating whether staging environments are allowed or not allowed for a static web app.
  /// [tags] Resource tags.
  /// [templateProperties] Template options for generating a new repository.
  const StaticSiteArgs({
    this.allowConfigFileUpdates,
    this.branch,
    this.buildProperties,
    this.enterpriseGradeCdnStatus,
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.provider,
    this.publicNetworkAccess,
    this.repositoryToken,
    this.repositoryUrl,
    required this.resourceGroupName,
    this.sku,
    this.stagingEnvironmentPolicy,
    this.tags,
    this.templateProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConfigFileUpdates': ?allowConfigFileUpdates,
      'branch': ?branch,
      'buildProperties': ?pulumi.Input.mapOptionalInputValue<StaticSiteBuildProperties, Map<String, dynamic>>(buildProperties, (value) => value.toMap()),
      'enterpriseGradeCdnStatus': ?enterpriseGradeCdnStatus,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'provider': ?provider,
      'publicNetworkAccess': ?publicNetworkAccess,
      'repositoryToken': ?repositoryToken,
      'repositoryUrl': ?repositoryUrl,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuDescription, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'stagingEnvironmentPolicy': ?pulumi.Input.mapOptionalInputValue<StagingEnvironmentPolicy, String>(stagingEnvironmentPolicy, (value) => value.wireValue),
      'tags': ?tags,
      'templateProperties': ?pulumi.Input.mapOptionalInputValue<StaticSiteTemplateOptions, Map<String, dynamic>>(templateProperties, (value) => value.toMap()),
    };
  }

  factory StaticSiteArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteArgs(
      allowConfigFileUpdates: (() { final guardedValue = map['allowConfigFileUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildProperties: (() { final guardedValue = map['buildProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticSiteBuildProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enterpriseGradeCdnStatus: (() { final guardedValue = map['enterpriseGradeCdnStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryToken: (() { final guardedValue = map['repositoryToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stagingEnvironmentPolicy: (() { final guardedValue = map['stagingEnvironmentPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StagingEnvironmentPolicy.fromValue(guardedValue as String)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateProperties: (() { final guardedValue = map['templateProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticSiteTemplateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
