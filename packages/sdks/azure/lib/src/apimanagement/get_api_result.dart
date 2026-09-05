// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_subscription_key_parameter_name.dart';

/// Result data returned by getApi.
class GetApiResult {
  final String? apiManagementName;
  /// A description of the API Management API, which may include HTML formatting tags.
  final String? description;
  /// The display name of the API.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Is this the current API Revision?
  final bool? isCurrent;
  /// Is this API Revision online/accessible via the Gateway?
  final bool? isOnline;
  final String? name;
  /// The Path for this API Management API.
  final String? path;
  /// A list of protocols the operations in this API can be invoked.
  final List<String>? protocols;
  final String? resourceGroupName;
  final String? revision;
  /// Absolute URL of the backend service implementing this API.
  final String? serviceUrl;
  /// Should this API expose a SOAP frontend, rather than a HTTP frontend?
  final bool? soapPassThrough;
  /// A `subscriptionKeyParameterNames` block as documented below.
  final List<GetApiSubscriptionKeyParameterName>? subscriptionKeyParameterNames;
  /// Should this API require a subscription key?
  final bool? subscriptionRequired;
  /// The Version number of this API, if this API is versioned.
  final String? version;
  /// The ID of the Version Set which this API is associated with.
  final String? versionSetId;

  /// Creates a new [GetApiResult].
  /// [apiManagementName] Optional.
  /// [description] A description of the API Management API, which may include HTML formatting tags.
  /// [displayName] The display name of the API.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isCurrent] Is this the current API Revision?
  /// [isOnline] Is this API Revision online/accessible via the Gateway?
  /// [name] Optional.
  /// [path] The Path for this API Management API.
  /// [protocols] A list of protocols the operations in this API can be invoked.
  /// [resourceGroupName] Optional.
  /// [revision] Optional.
  /// [serviceUrl] Absolute URL of the backend service implementing this API.
  /// [soapPassThrough] Should this API expose a SOAP frontend, rather than a HTTP frontend?
  /// [subscriptionKeyParameterNames] A `subscriptionKeyParameterNames` block as documented below.
  /// [subscriptionRequired] Should this API require a subscription key?
  /// [version] The Version number of this API, if this API is versioned.
  /// [versionSetId] The ID of the Version Set which this API is associated with.
  const GetApiResult({
    this.apiManagementName,
    this.description,
    this.displayName,
    this.id,
    this.isCurrent,
    this.isOnline,
    this.name,
    this.path,
    this.protocols,
    this.resourceGroupName,
    this.revision,
    this.serviceUrl,
    this.soapPassThrough,
    this.subscriptionKeyParameterNames,
    this.subscriptionRequired,
    this.version,
    this.versionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'isCurrent': ?isCurrent,
      'isOnline': ?isOnline,
      'name': ?name,
      'path': ?path,
      'protocols': ?protocols,
      'resourceGroupName': ?resourceGroupName,
      'revision': ?revision,
      'serviceUrl': ?serviceUrl,
      'soapPassThrough': ?soapPassThrough,
      'subscriptionKeyParameterNames': ?(() { final guardedValue = subscriptionKeyParameterNames; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiSubscriptionKeyParameterName, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subscriptionRequired': ?subscriptionRequired,
      'version': ?version,
      'versionSetId': ?versionSetId,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isCurrent: (() { final guardedValue = map['isCurrent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isOnline: (() { final guardedValue = map['isOnline']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceUrl: (() { final guardedValue = map['serviceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      soapPassThrough: (() { final guardedValue = map['soapPassThrough']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subscriptionKeyParameterNames: (() { final guardedValue = map['subscriptionKeyParameterNames']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiSubscriptionKeyParameterName>(guardedValue, (value) => GetApiSubscriptionKeyParameterName.fromMap((value as Map).cast<String, dynamic>())); })(),
      subscriptionRequired: (() { final guardedValue = map['subscriptionRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionSetId: (() { final guardedValue = map['versionSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
