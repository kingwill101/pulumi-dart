// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_delivery_rule.dart';
import 'endpoint_geo_filter.dart';
import 'endpoint_global_delivery_rule.dart';
import 'endpoint_origin.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types.
  final pulumi.Input<List<String>>? contentTypesToCompresses;
  /// Rules for the rules engine. An endpoint can contain up until 4 of those rules that consist of conditions and actions. A `delivery_rule` blocks as defined below.
  final pulumi.Input<List<EndpointDeliveryRule>>? deliveryRules;
  /// The Fully Qualified Domain Name of the CDN Endpoint.
  final pulumi.Input<String>? fqdn;
  /// A set of Geo Filters for this CDN Endpoint. Each `geo_filter` block supports fields documented below.
  final pulumi.Input<List<EndpointGeoFilter>>? geoFilters;
  /// Actions that are valid for all resources regardless of any conditions. A `global_delivery_rule` block as defined below.
  final pulumi.Input<EndpointGlobalDeliveryRule>? globalDeliveryRule;
  /// Indicates whether compression is to be enabled.
  final pulumi.Input<bool>? isCompressionEnabled;
  /// Specifies if http allowed. Defaults to `true`.
  final pulumi.Input<bool>? isHttpAllowed;
  /// Specifies if https allowed. Defaults to `true`.
  final pulumi.Input<bool>? isHttpsAllowed;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// What types of optimization should this CDN Endpoint optimize for? Possible values include `DynamicSiteAcceleration`, `GeneralMediaStreaming`, `GeneralWebDelivery`, `LargeFileDownload` and `VideoOnDemandMediaStreaming`.
  final pulumi.Input<String>? optimizationType;
  /// The host header CDN provider will send along with content requests to origins.
  final pulumi.Input<String>? originHostHeader;
  /// The path used at for origin requests.
  final pulumi.Input<String>? originPath;
  /// The set of origins of the CDN endpoint. When multiple origins exist, the first origin will be used as primary and rest will be used as failover options. Each `origin` block supports fields documented below. Changing this forces a new resource to be created.
  final pulumi.Input<List<EndpointOrigin>>? origins;
  /// the path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the `origin_path`.
  ///
  /// > **Note:** `global_delivery_rule` and `delivery_rule` are currently only available for `Microsoft_Standard` CDN profiles.
  final pulumi.Input<String>? probePath;
  /// The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? profileName;
  /// Sets query string caching behavior. Allowed values are `IgnoreQueryString`, `BypassCaching` and `UseQueryString`. `NotSet` value can be used for `Premium Verizon` CDN profile. Defaults to `IgnoreQueryString`.
  final pulumi.Input<String>? querystringCachingBehaviour;
  /// The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EndpointState].
  /// [contentTypesToCompresses] An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types.
  /// [deliveryRules] Rules for the rules engine. An endpoint can contain up until 4 of those rules that consist of conditions and actions. A `delivery_rule` blocks as defined below.
  /// [fqdn] The Fully Qualified Domain Name of the CDN Endpoint.
  /// [geoFilters] A set of Geo Filters for this CDN Endpoint. Each `geo_filter` block supports fields documented below.
  /// [globalDeliveryRule] Actions that are valid for all resources regardless of any conditions. A `global_delivery_rule` block as defined below.
  /// [isCompressionEnabled] Indicates whether compression is to be enabled.
  /// [isHttpAllowed] Specifies if http allowed. Defaults to `true`.
  /// [isHttpsAllowed] Specifies if https allowed. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created.
  /// [optimizationType] What types of optimization should this CDN Endpoint optimize for? Possible values include `DynamicSiteAcceleration`, `GeneralMediaStreaming`, `GeneralWebDelivery`, `LargeFileDownload` and `VideoOnDemandMediaStreaming`.
  /// [originHostHeader] The host header CDN provider will send along with content requests to origins.
  /// [originPath] The path used at for origin requests.
  /// [origins] The set of origins of the CDN endpoint. When multiple origins exist, the first origin will be used as primary and rest will be used as failover options. Each `origin` block supports fields documented below. Changing this forces a new resource to be created.
  /// [probePath] the path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the `origin_path`.
  /// [profileName] The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created.
  /// [querystringCachingBehaviour] Sets query string caching behavior. Allowed values are `IgnoreQueryString`, `BypassCaching` and `UseQueryString`. `NotSet` value can be used for `Premium Verizon` CDN profile. Defaults to `IgnoreQueryString`.
  /// [resourceGroupName] The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  EndpointState({
    pulumi.Output<List<String>>? contentTypesToCompresses,
    pulumi.Output<List<EndpointDeliveryRule>>? deliveryRules,
    pulumi.Output<String>? fqdn,
    pulumi.Output<List<EndpointGeoFilter>>? geoFilters,
    pulumi.Output<EndpointGlobalDeliveryRule>? globalDeliveryRule,
    pulumi.Output<bool>? isCompressionEnabled,
    pulumi.Output<bool>? isHttpAllowed,
    pulumi.Output<bool>? isHttpsAllowed,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? optimizationType,
    pulumi.Output<String>? originHostHeader,
    pulumi.Output<String>? originPath,
    pulumi.Output<List<EndpointOrigin>>? origins,
    pulumi.Output<String>? probePath,
    pulumi.Output<String>? profileName,
    pulumi.Output<String>? querystringCachingBehaviour,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      contentTypesToCompresses = pulumi.Input.asOptionalInput<List<String>>(contentTypesToCompresses),
      deliveryRules = pulumi.Input.asOptionalInput<List<EndpointDeliveryRule>>(deliveryRules),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      geoFilters = pulumi.Input.asOptionalInput<List<EndpointGeoFilter>>(geoFilters),
      globalDeliveryRule = pulumi.Input.asOptionalInput<EndpointGlobalDeliveryRule>(globalDeliveryRule),
      isCompressionEnabled = pulumi.Input.asOptionalInput<bool>(isCompressionEnabled),
      isHttpAllowed = pulumi.Input.asOptionalInput<bool>(isHttpAllowed),
      isHttpsAllowed = pulumi.Input.asOptionalInput<bool>(isHttpsAllowed),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimizationType = pulumi.Input.asOptionalInput<String>(optimizationType),
      originHostHeader = pulumi.Input.asOptionalInput<String>(originHostHeader),
      originPath = pulumi.Input.asOptionalInput<String>(originPath),
      origins = pulumi.Input.asOptionalInput<List<EndpointOrigin>>(origins),
      probePath = pulumi.Input.asOptionalInput<String>(probePath),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      querystringCachingBehaviour = pulumi.Input.asOptionalInput<String>(querystringCachingBehaviour),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypesToCompresses': ?contentTypesToCompresses,
      'deliveryRules': ?pulumi.Input.mapOptionalInputValue<List<EndpointDeliveryRule>, List<Map<String, dynamic>>>(deliveryRules, (value) => pulumi.Input.encodeList<EndpointDeliveryRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fqdn': ?fqdn,
      'geoFilters': ?pulumi.Input.mapOptionalInputValue<List<EndpointGeoFilter>, List<Map<String, dynamic>>>(geoFilters, (value) => pulumi.Input.encodeList<EndpointGeoFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalDeliveryRule': ?pulumi.Input.mapOptionalInputValue<EndpointGlobalDeliveryRule, Map<String, dynamic>>(globalDeliveryRule, (value) => value.toMap()),
      'isCompressionEnabled': ?isCompressionEnabled,
      'isHttpAllowed': ?isHttpAllowed,
      'isHttpsAllowed': ?isHttpsAllowed,
      'location': ?location,
      'name': ?name,
      'optimizationType': ?optimizationType,
      'originHostHeader': ?originHostHeader,
      'originPath': ?originPath,
      'origins': ?pulumi.Input.mapOptionalInputValue<List<EndpointOrigin>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<EndpointOrigin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probePath': ?probePath,
      'profileName': ?profileName,
      'querystringCachingBehaviour': ?querystringCachingBehaviour,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      contentTypesToCompresses: map['contentTypesToCompresses'] == null ? null : pulumi.Output.create<List<String>>((map['contentTypesToCompresses'] as List).cast<String>()),
      deliveryRules: map['deliveryRules'] == null ? null : pulumi.Output.create<List<EndpointDeliveryRule>>(pulumi.Input.decodeList<EndpointDeliveryRule>(map['deliveryRules'], (value) => EndpointDeliveryRule.fromMap((value as Map).cast<String, dynamic>()))),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      geoFilters: map['geoFilters'] == null ? null : pulumi.Output.create<List<EndpointGeoFilter>>(pulumi.Input.decodeList<EndpointGeoFilter>(map['geoFilters'], (value) => EndpointGeoFilter.fromMap((value as Map).cast<String, dynamic>()))),
      globalDeliveryRule: map['globalDeliveryRule'] == null ? null : pulumi.Output.create<EndpointGlobalDeliveryRule>(EndpointGlobalDeliveryRule.fromMap((map['globalDeliveryRule'] as Map).cast<String, dynamic>())),
      isCompressionEnabled: map['isCompressionEnabled'] == null ? null : pulumi.Output.create<bool>(map['isCompressionEnabled'] as bool),
      isHttpAllowed: map['isHttpAllowed'] == null ? null : pulumi.Output.create<bool>(map['isHttpAllowed'] as bool),
      isHttpsAllowed: map['isHttpsAllowed'] == null ? null : pulumi.Output.create<bool>(map['isHttpsAllowed'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optimizationType: map['optimizationType'] == null ? null : pulumi.Output.create<String>(map['optimizationType'] as String),
      originHostHeader: map['originHostHeader'] == null ? null : pulumi.Output.create<String>(map['originHostHeader'] as String),
      originPath: map['originPath'] == null ? null : pulumi.Output.create<String>(map['originPath'] as String),
      origins: map['origins'] == null ? null : pulumi.Output.create<List<EndpointOrigin>>(pulumi.Input.decodeList<EndpointOrigin>(map['origins'], (value) => EndpointOrigin.fromMap((value as Map).cast<String, dynamic>()))),
      probePath: map['probePath'] == null ? null : pulumi.Output.create<String>(map['probePath'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      querystringCachingBehaviour: map['querystringCachingBehaviour'] == null ? null : pulumi.Output.create<String>(map['querystringCachingBehaviour'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

