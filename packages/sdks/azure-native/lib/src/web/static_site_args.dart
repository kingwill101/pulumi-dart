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
  /// <code>false</code> if config file is locked for this static web app; otherwise, <code>true</code>.
  final pulumi.Input<bool>? allowConfigFileUpdates;
  /// The target branch in the repository.
  final pulumi.Input<String>? branch;
  /// Build properties to configure on the repository.
  final pulumi.Input<StaticSiteBuildProperties>? buildProperties;
  /// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
  final pulumi.Input<String>? enterpriseGradeCdnStatus;
  /// Managed service identity.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Name of the static site to create or update.
  final pulumi.Input<String>? name;
  /// The provider that submitted the last deployment to the primary environment of the static site.
  final pulumi.Input<String>? provider;
  /// State indicating whether public traffic are allowed or not for a static web app. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  final pulumi.Input<String>? publicNetworkAccess;
  /// A user's github repository token. This is used to setup the Github Actions workflow file and API secrets.
  final pulumi.Input<String>? repositoryToken;
  /// URL for the repository of the static site.
  final pulumi.Input<String>? repositoryUrl;
  /// Name of the resource group to which the resource belongs.
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
  /// [allowConfigFileUpdates] <code>false</code> if config file is locked for this static web app; otherwise, <code>true</code>.
  /// [branch] The target branch in the repository.
  /// [buildProperties] Build properties to configure on the repository.
  /// [enterpriseGradeCdnStatus] State indicating the status of the enterprise grade CDN serving traffic to the static web app.
  /// [identity] Managed service identity.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Name of the static site to create or update.
  /// [provider] The provider that submitted the last deployment to the primary environment of the static site.
  /// [publicNetworkAccess] State indicating whether public traffic are allowed or not for a static web app. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  /// [repositoryToken] A user's github repository token. This is used to setup the Github Actions workflow file and API secrets.
  /// [repositoryUrl] URL for the repository of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sku] Description of a SKU for a scalable resource.
  /// [stagingEnvironmentPolicy] State indicating whether staging environments are allowed or not allowed for a static web app.
  /// [tags] Resource tags.
  /// [templateProperties] Template options for generating a new repository.
  StaticSiteArgs({
    pulumi.Output<bool>? allowConfigFileUpdates,
    pulumi.Output<String>? branch,
    pulumi.Output<StaticSiteBuildProperties>? buildProperties,
    pulumi.Output<String>? enterpriseGradeCdnStatus,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? provider,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? repositoryToken,
    pulumi.Output<String>? repositoryUrl,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SkuDescription>? sku,
    pulumi.Output<StagingEnvironmentPolicy>? stagingEnvironmentPolicy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<StaticSiteTemplateOptions>? templateProperties,
  }) :
      allowConfigFileUpdates = pulumi.Input.asOptionalInput<bool>(allowConfigFileUpdates),
      branch = pulumi.Input.asOptionalInput<String>(branch),
      buildProperties = pulumi.Input.asOptionalInput<StaticSiteBuildProperties>(buildProperties),
      enterpriseGradeCdnStatus = pulumi.Input.asOptionalInput<String>(enterpriseGradeCdnStatus),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      provider = pulumi.Input.asOptionalInput<String>(provider),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      repositoryToken = pulumi.Input.asOptionalInput<String>(repositoryToken),
      repositoryUrl = pulumi.Input.asOptionalInput<String>(repositoryUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<SkuDescription>(sku),
      stagingEnvironmentPolicy = pulumi.Input.asOptionalInput<StagingEnvironmentPolicy>(stagingEnvironmentPolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateProperties = pulumi.Input.asOptionalInput<StaticSiteTemplateOptions>(templateProperties);

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
      'stagingEnvironmentPolicy': ?pulumi.Input.mapOptionalInputValue<StagingEnvironmentPolicy, String>(stagingEnvironmentPolicy, (value) => value.value),
      'tags': ?tags,
      'templateProperties': ?pulumi.Input.mapOptionalInputValue<StaticSiteTemplateOptions, Map<String, dynamic>>(templateProperties, (value) => value.toMap()),
    };
  }

  factory StaticSiteArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteArgs(
      allowConfigFileUpdates: map['allowConfigFileUpdates'] == null ? null : pulumi.Output.create<bool>(map['allowConfigFileUpdates'] as bool),
      branch: map['branch'] == null ? null : pulumi.Output.create<String>(map['branch'] as String),
      buildProperties: map['buildProperties'] == null ? null : pulumi.Output.create<StaticSiteBuildProperties>(StaticSiteBuildProperties.fromMap((map['buildProperties'] as Map).cast<String, dynamic>())),
      enterpriseGradeCdnStatus: map['enterpriseGradeCdnStatus'] == null ? null : pulumi.Output.create<String>(map['enterpriseGradeCdnStatus'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      provider: map['provider'] == null ? null : pulumi.Output.create<String>(map['provider'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      repositoryToken: map['repositoryToken'] == null ? null : pulumi.Output.create<String>(map['repositoryToken'] as String),
      repositoryUrl: map['repositoryUrl'] == null ? null : pulumi.Output.create<String>(map['repositoryUrl'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<SkuDescription>(SkuDescription.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      stagingEnvironmentPolicy: map['stagingEnvironmentPolicy'] == null ? null : pulumi.Output.create<StagingEnvironmentPolicy>(StagingEnvironmentPolicy.fromValue(map['stagingEnvironmentPolicy'] as String)),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateProperties: map['templateProperties'] == null ? null : pulumi.Output.create<StaticSiteTemplateOptions>(StaticSiteTemplateOptions.fromMap((map['templateProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

