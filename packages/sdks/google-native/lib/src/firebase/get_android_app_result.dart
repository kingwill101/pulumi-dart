// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAndroidApp.
class GetAndroidAppResult {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `AndroidApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.androidApps/getConfig). If `api_key_id` is not set in requests to [`androidApps.Create`](../../rest/v1beta1/projects.androidApps/create), then Firebase automatically associates an `api_key_id` with the `AndroidApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `AndroidApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final String apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;
  /// The user-assigned display name for the `AndroidApp`.
  final String displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final String etag;
  /// Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  final String expireTime;
  /// The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  final String name;
  /// Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  final String packageName;
  /// Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `AndroidApp`.
  final String project;
  /// The SHA1 certificate hashes for the AndroidApp.
  final List<String> sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  final List<String> sha256Hashes;
  /// The lifecycle state of the App.
  final String state;

  /// Creates a new [GetAndroidAppResult].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `AndroidApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.androidApps/getConfig). If `api_key_id` is not set in requests to [`androidApps.Create`](../../rest/v1beta1/projects.androidApps/create), then Firebase automatically associates an `api_key_id` with the `AndroidApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `AndroidApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  /// [displayName] The user-assigned display name for the `AndroidApp`.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  /// [expireTime] Timestamp of when the App will be considered expired and cannot be undeleted. This value is only provided if the App is in the `DELETED` state.
  /// [name] The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  /// [packageName] Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  /// [project] Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `AndroidApp`.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  /// [state] The lifecycle state of the App.
  const GetAndroidAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.displayName,
    required this.etag,
    required this.expireTime,
    required this.name,
    required this.packageName,
    required this.project,
    required this.sha1Hashes,
    required this.sha256Hashes,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': apiKeyId,
      'appId': appId,
      'displayName': displayName,
      'etag': etag,
      'expireTime': expireTime,
      'name': name,
      'packageName': packageName,
      'project': project,
      'sha1Hashes': sha1Hashes,
      'sha256Hashes': sha256Hashes,
      'state': state,
    };
  }

  factory GetAndroidAppResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] as String,
      sha1Hashes: (map['sha1Hashes'] as List).cast<String>(),
      sha256Hashes: (map['sha256Hashes'] as List).cast<String>(),
      state: map['state'] as String,
    );
  }
}
