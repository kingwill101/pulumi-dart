// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebApp.
class GetWebAppResult {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `WebApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.webApps/getConfig). If `api_key_id` is not set in requests to [`webApps.Create`](../../rest/v1beta1/projects.webApps/create), then Firebase automatically associates an `api_key_id` with the `WebApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `WebApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final String apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;
  /// The URLs where the `WebApp` is hosted.
  final List<String> appUrls;
  /// The user-assigned display name for the `WebApp`.
  final String displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final String etag;
  /// Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  final String expireTime;
  /// The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)).
  final String name;
  /// Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `WebApp`.
  final String project;
  /// The lifecycle state of the App.
  final String state;
  /// Immutable. A unique, Firebase-assigned identifier for the `WebApp`. This identifier is only used to populate the `namespace` value for the `WebApp`. For most use cases, use `appId` to identify or reference the App. The `webId` value is only unique within a `FirebaseProject` and its associated Apps.
  final String webId;

  /// Creates a new [GetWebAppResult].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `WebApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.webApps/getConfig). If `api_key_id` is not set in requests to [`webApps.Create`](../../rest/v1beta1/projects.webApps/create), then Firebase automatically associates an `api_key_id` with the `WebApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `WebApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier for the `WebApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  /// [appUrls] The URLs where the `WebApp` is hosted.
  /// [displayName] The user-assigned display name for the `WebApp`.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  /// [expireTime] Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  /// [name] The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)).
  /// [project] Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `WebApp`.
  /// [state] The lifecycle state of the App.
  /// [webId] Immutable. A unique, Firebase-assigned identifier for the `WebApp`. This identifier is only used to populate the `namespace` value for the `WebApp`. For most use cases, use `appId` to identify or reference the App. The `webId` value is only unique within a `FirebaseProject` and its associated Apps.
  const GetWebAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.appUrls,
    required this.displayName,
    required this.etag,
    required this.expireTime,
    required this.name,
    required this.project,
    required this.state,
    required this.webId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': apiKeyId,
      'appId': appId,
      'appUrls': appUrls,
      'displayName': displayName,
      'etag': etag,
      'expireTime': expireTime,
      'name': name,
      'project': project,
      'state': state,
      'webId': webId,
    };
  }

  factory GetWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      appUrls: (map['appUrls'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      webId: map['webId'] as String,
    );
  }
}
