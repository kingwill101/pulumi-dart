// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact.dart';
import 'api_import.dart';
import 'api_license.dart';
import 'api_oauth2_authorization.dart';
import 'api_openid_authentication.dart';
import 'api_subscription_key_parameter_names.dart';

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiManagementName;
  /// Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`.
  final pulumi.Input<String?>? apiType;
  /// A `contact` block as documented below.
  final pulumi.Input<ApiContact?>? contact;
  /// A description of the API Management API, which may include HTML formatting tags.
  final pulumi.Input<String?>? description;
  /// The display name of the API.
  final pulumi.Input<String?>? displayName;
  /// A `import` block as documented below.
  ///
  /// &gt; **Note:** The `displayName`, `description`, `contact`, and `license` fields can be imported by the `import` block, which might cause a drift if these fields are set along with the `import` block.
  final pulumi.Input<ApiImport?>? import;
  /// Is this the current API Revision?
  final pulumi.Input<bool?>? isCurrent;
  /// Is this API Revision online/accessible via the Gateway?
  final pulumi.Input<bool?>? isOnline;
  /// A `license` block as documented below.
  final pulumi.Input<ApiLicense?>? license;
  /// The name of the API Management API. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// An `oauth2Authorization` block as documented below.
  final pulumi.Input<ApiOauth2Authorization?>? oauth2Authorization;
  /// An `openidAuthentication` block as documented below.
  final pulumi.Input<ApiOpenidAuthentication?>? openidAuthentication;
  /// The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service.
  final pulumi.Input<String?>? path;
  /// A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`.
  ///
  /// &gt; **Note:** `displayName`, `path` and `protocols` are required when `sourceApiId` is not set.
  final pulumi.Input<List<String>?>? protocols;
  /// The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The Revision which used for this API. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? revision;
  /// The description of the API Revision of the API Management API.
  final pulumi.Input<String?>? revisionDescription;
  /// Absolute URL of the backend service implementing this API.
  ///
  /// &gt; **Note:** The `serviceUrl` is required when `apiType` is specified as `websocket`.
  final pulumi.Input<String?>? serviceUrl;
  /// The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1`
  final pulumi.Input<String?>? sourceApiId;
  /// A `subscriptionKeyParameterNames` block as documented below.
  final pulumi.Input<ApiSubscriptionKeyParameterNames?>? subscriptionKeyParameterNames;
  /// Should this API require a subscription key? Defaults to `true`.
  final pulumi.Input<bool?>? subscriptionRequired;
  /// Absolute URL of the Terms of Service for the API.
  final pulumi.Input<String?>? termsOfServiceUrl;
  /// The Version number of this API, if this API is versioned.
  final pulumi.Input<String?>? version;
  /// The description of the API Version of the API Management API.
  final pulumi.Input<String?>? versionDescription;
  /// The ID of the Version Set which this API is associated with.
  ///
  /// &gt; **Note:** When `version` is set, `versionSetId` must also be specified
  final pulumi.Input<String?>? versionSetId;

  /// Creates a new [ApiState].
  /// [apiManagementName] The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created.
  /// [apiType] Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`.
  /// [contact] A `contact` block as documented below.
  /// [description] A description of the API Management API, which may include HTML formatting tags.
  /// [displayName] The display name of the API.
  /// [import] A `import` block as documented below.
  /// [isCurrent] Is this the current API Revision?
  /// [isOnline] Is this API Revision online/accessible via the Gateway?
  /// [license] A `license` block as documented below.
  /// [name] The name of the API Management API. Changing this forces a new resource to be created.
  /// [oauth2Authorization] An `oauth2Authorization` block as documented below.
  /// [openidAuthentication] An `openidAuthentication` block as documented below.
  /// [path] The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service.
  /// [protocols] A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`.
  /// [resourceGroupName] The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created.
  /// [revision] The Revision which used for this API. Changing this forces a new resource to be created.
  /// [revisionDescription] The description of the API Revision of the API Management API.
  /// [serviceUrl] Absolute URL of the backend service implementing this API.
  /// [sourceApiId] The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1`
  /// [subscriptionKeyParameterNames] A `subscriptionKeyParameterNames` block as documented below.
  /// [subscriptionRequired] Should this API require a subscription key? Defaults to `true`.
  /// [termsOfServiceUrl] Absolute URL of the Terms of Service for the API.
  /// [version] The Version number of this API, if this API is versioned.
  /// [versionDescription] The description of the API Version of the API Management API.
  /// [versionSetId] The ID of the Version Set which this API is associated with.
  const ApiState({
    this.apiManagementName,
    this.apiType,
    this.contact,
    this.description,
    this.displayName,
    this.import,
    this.isCurrent,
    this.isOnline,
    this.license,
    this.name,
    this.oauth2Authorization,
    this.openidAuthentication,
    this.path,
    this.protocols,
    this.resourceGroupName,
    this.revision,
    this.revisionDescription,
    this.serviceUrl,
    this.sourceApiId,
    this.subscriptionKeyParameterNames,
    this.subscriptionRequired,
    this.termsOfServiceUrl,
    this.version,
    this.versionDescription,
    this.versionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'apiType': ?apiType,
      'contact': ?pulumi.Input.mapOptionalInputValue<ApiContact, Map<String, dynamic>>(contact, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'import': ?pulumi.Input.mapOptionalInputValue<ApiImport, Map<String, dynamic>>(import, (value) => value.toMap()),
      'isCurrent': ?isCurrent,
      'isOnline': ?isOnline,
      'license': ?pulumi.Input.mapOptionalInputValue<ApiLicense, Map<String, dynamic>>(license, (value) => value.toMap()),
      'name': ?name,
      'oauth2Authorization': ?pulumi.Input.mapOptionalInputValue<ApiOauth2Authorization, Map<String, dynamic>>(oauth2Authorization, (value) => value.toMap()),
      'openidAuthentication': ?pulumi.Input.mapOptionalInputValue<ApiOpenidAuthentication, Map<String, dynamic>>(openidAuthentication, (value) => value.toMap()),
      'path': ?path,
      'protocols': ?protocols,
      'resourceGroupName': ?resourceGroupName,
      'revision': ?revision,
      'revisionDescription': ?revisionDescription,
      'serviceUrl': ?serviceUrl,
      'sourceApiId': ?sourceApiId,
      'subscriptionKeyParameterNames': ?pulumi.Input.mapOptionalInputValue<ApiSubscriptionKeyParameterNames, Map<String, dynamic>>(subscriptionKeyParameterNames, (value) => value.toMap()),
      'subscriptionRequired': ?subscriptionRequired,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'version': ?version,
      'versionDescription': ?versionDescription,
      'versionSetId': ?versionSetId,
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contact: (() { final guardedValue = map['contact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiContact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      import: (() { final guardedValue = map['import']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiImport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isCurrent: (() { final guardedValue = map['isCurrent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOnline: (() { final guardedValue = map['isOnline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiLicense.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2Authorization: (() { final guardedValue = map['oauth2Authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiOauth2Authorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openidAuthentication: (() { final guardedValue = map['openidAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiOpenidAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionDescription: (() { final guardedValue = map['revisionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUrl: (() { final guardedValue = map['serviceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceApiId: (() { final guardedValue = map['sourceApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionKeyParameterNames: (() { final guardedValue = map['subscriptionKeyParameterNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiSubscriptionKeyParameterNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionRequired: (() { final guardedValue = map['subscriptionRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      termsOfServiceUrl: (() { final guardedValue = map['termsOfServiceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionSetId: (() { final guardedValue = map['versionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
