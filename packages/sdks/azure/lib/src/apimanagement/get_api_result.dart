// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_subscription_key_parameter_name.dart';

/// Result data returned by getApi.
class GetApiResult {
  final String apiManagementName;
  /// A description of the API Management API, which may include HTML formatting tags.
  final String description;
  /// The display name of the API.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Is this the current API Revision?
  final bool isCurrent;
  /// Is this API Revision online/accessible via the Gateway?
  final bool isOnline;
  final String name;
  /// The Path for this API Management API.
  final String path;
  /// A list of protocols the operations in this API can be invoked.
  final List<String> protocols;
  final String resourceGroupName;
  final String revision;
  /// Absolute URL of the backend service implementing this API.
  final String serviceUrl;
  /// Should this API expose a SOAP frontend, rather than a HTTP frontend?
  final bool soapPassThrough;
  /// A `subscriptionKeyParameterNames` block as documented below.
  final List<GetApiSubscriptionKeyParameterName> subscriptionKeyParameterNames;
  /// Should this API require a subscription key?
  final bool subscriptionRequired;
  /// The Version number of this API, if this API is versioned.
  final String version;
  /// The ID of the Version Set which this API is associated with.
  final String versionSetId;

  /// Creates a new [GetApiResult].
  /// [apiManagementName] Required.
  /// [description] A description of the API Management API, which may include HTML formatting tags.
  /// [displayName] The display name of the API.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isCurrent] Is this the current API Revision?
  /// [isOnline] Is this API Revision online/accessible via the Gateway?
  /// [name] Required.
  /// [path] The Path for this API Management API.
  /// [protocols] A list of protocols the operations in this API can be invoked.
  /// [resourceGroupName] Required.
  /// [revision] Required.
  /// [serviceUrl] Absolute URL of the backend service implementing this API.
  /// [soapPassThrough] Should this API expose a SOAP frontend, rather than a HTTP frontend?
  /// [subscriptionKeyParameterNames] A `subscriptionKeyParameterNames` block as documented below.
  /// [subscriptionRequired] Should this API require a subscription key?
  /// [version] The Version number of this API, if this API is versioned.
  /// [versionSetId] The ID of the Version Set which this API is associated with.
  const GetApiResult({
    required this.apiManagementName,
    required this.description,
    required this.displayName,
    required this.id,
    required this.isCurrent,
    required this.isOnline,
    required this.name,
    required this.path,
    required this.protocols,
    required this.resourceGroupName,
    required this.revision,
    required this.serviceUrl,
    required this.soapPassThrough,
    required this.subscriptionKeyParameterNames,
    required this.subscriptionRequired,
    required this.version,
    required this.versionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': description,
      'displayName': displayName,
      'id': id,
      'isCurrent': isCurrent,
      'isOnline': isOnline,
      'name': name,
      'path': path,
      'protocols': protocols,
      'resourceGroupName': resourceGroupName,
      'revision': revision,
      'serviceUrl': serviceUrl,
      'soapPassThrough': soapPassThrough,
      'subscriptionKeyParameterNames': pulumi.Input.encodeList<GetApiSubscriptionKeyParameterName, Map<String, dynamic>>(subscriptionKeyParameterNames, (value) => value.toMap()),
      'subscriptionRequired': subscriptionRequired,
      'version': version,
      'versionSetId': versionSetId,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      apiManagementName: map['apiManagementName'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      isCurrent: map['isCurrent'] as bool,
      isOnline: map['isOnline'] as bool,
      name: map['name'] as String,
      path: map['path'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      revision: map['revision'] as String,
      serviceUrl: map['serviceUrl'] as String,
      soapPassThrough: map['soapPassThrough'] as bool,
      subscriptionKeyParameterNames: pulumi.Input.decodeList<GetApiSubscriptionKeyParameterName>(map['subscriptionKeyParameterNames']!, (value) => GetApiSubscriptionKeyParameterName.fromMap((value as Map).cast<String, dynamic>())),
      subscriptionRequired: map['subscriptionRequired'] as bool,
      version: map['version'] as String,
      versionSetId: map['versionSetId'] as String,
    );
  }
}
