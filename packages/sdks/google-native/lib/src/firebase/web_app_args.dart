// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_web_app_args_doc}
/// The set of arguments for WebApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_web_app_args_doc}
class WebAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `WebApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.webApps/getConfig). If `api_key_id` is not set in requests to [`webApps.Create`](../../rest/v1beta1/projects.webApps/create), then Firebase automatically associates an `api_key_id` with the `WebApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `WebApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  final pulumi.Input<String>? apiKeyId;
  /// The URLs where the `WebApp` is hosted.
  final pulumi.Input<List<String>>? appUrls;
  /// The user-assigned display name for the `WebApp`.
  final pulumi.Input<String>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  final pulumi.Input<String>? etag;
  /// The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [WebAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the `WebApp`. Be aware that this value is the UID of the API key, _not_ the [`keyString`](https://cloud.google.com/api-keys/docs/reference/rest/v2/projects.locations.keys#Key.FIELDS.key_string) of the API key. The `keyString` is the value that can be found in the App's [configuration artifact](../../rest/v1beta1/projects.webApps/getConfig). If `api_key_id` is not set in requests to [`webApps.Create`](../../rest/v1beta1/projects.webApps/create), then Firebase automatically associates an `api_key_id` with the `WebApp`. This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned. In patch requests, `api_key_id` cannot be set to an empty value, and the new UID must have no restrictions or only have restrictions that are valid for the associated `WebApp`. We recommend using the [Google Cloud Console](https://console.cloud.google.com/apis/credentials) to manage API keys.
  /// [appUrls] The URLs where the `WebApp` is hosted.
  /// [displayName] The user-assigned display name for the `WebApp`.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent with update requests to ensure the client has an up-to-date value before proceeding. Learn more about `etag` in Google's [AIP-154 standard](https://google.aip.dev/154#declarative-friendly-resources). This etag is strongly validated.
  /// [name] The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)).
  /// [project] Optional.
  WebAppArgs({
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<List<String>>? appUrls,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      appUrls = pulumi.Input.asOptionalInput<List<String>>(appUrls),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appUrls': ?appUrls,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'project': ?project,
    };
  }

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      appUrls: map['appUrls'] == null ? null : pulumi.Output.create<List<String>>((map['appUrls'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

