// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebApp resources.
class WebAppState {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the WebApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;

  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final pulumi.Input<String>? appId;

  /// The URLs where the `WebApp` is hosted.
  final pulumi.Input<List<String>>? appUrls;
  final pulumi.Input<String>? deletionPolicy;

  /// The user-assigned display name of the App.
  final pulumi.Input<String>? displayName;

  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/webApps/appId
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [WebAppState].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// [appId] The globally unique, Firebase-assigned identifier of the App.
  /// [appUrls] The URLs where the `WebApp` is hosted.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the App.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] The ID of the project in which the resource belongs.
  WebAppState({
    this.apiKeyId,
    this.appId,
    this.appUrls,
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'appUrls': ?appUrls,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
    };
  }

  factory WebAppState.fromMap(Map<String, dynamic> map) {
    return WebAppState(
      apiKeyId: (() {
        final guardedValue = map['apiKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appUrls: (() {
        final guardedValue = map['appUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      deletionPolicy: (() {
        final guardedValue = map['deletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
