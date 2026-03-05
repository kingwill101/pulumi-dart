// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_library_settings_response.dart';
import 'method_settings_response.dart';

/// This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.
class PublishingResponse {
  /// Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: "speech".
  final pulumi.Input<String> apiShortName;
  /// GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
  final pulumi.Input<List<String>> codeownerGithubTeams;
  /// A prefix used in sample code when demarking regions to be included in documentation.
  final pulumi.Input<String> docTagPrefix;
  /// Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview
  final pulumi.Input<String> documentationUri;
  /// GitHub label to apply to issues and pull requests opened for this API.
  final pulumi.Input<String> githubLabel;
  /// Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
  final pulumi.Input<List<ClientLibrarySettingsResponse>> librarySettings;
  /// A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
  final pulumi.Input<List<MethodSettingsResponse>> methodSettings;
  /// Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103
  final pulumi.Input<String> newIssueUri;
  /// For whom the client library is being published.
  final pulumi.Input<String> organization;
  /// Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/docs/reference/rpc
  final pulumi.Input<String> protoReferenceDocumentationUri;

  /// Creates a new [PublishingResponse].
  /// [apiShortName] Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: "speech".
  /// [codeownerGithubTeams] GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
  /// [docTagPrefix] A prefix used in sample code when demarking regions to be included in documentation.
  /// [documentationUri] Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview
  /// [githubLabel] GitHub label to apply to issues and pull requests opened for this API.
  /// [librarySettings] Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
  /// [methodSettings] A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
  /// [newIssueUri] Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103
  /// [organization] For whom the client library is being published.
  /// [protoReferenceDocumentationUri] Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/docs/reference/rpc
  PublishingResponse({
    required this.apiShortName,
    required this.codeownerGithubTeams,
    required this.docTagPrefix,
    required this.documentationUri,
    required this.githubLabel,
    required this.librarySettings,
    required this.methodSettings,
    required this.newIssueUri,
    required this.organization,
    required this.protoReferenceDocumentationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiShortName': apiShortName,
      'codeownerGithubTeams': codeownerGithubTeams,
      'docTagPrefix': docTagPrefix,
      'documentationUri': documentationUri,
      'githubLabel': githubLabel,
      'librarySettings': pulumi.Input.mapInputValue<List<ClientLibrarySettingsResponse>, List<Map<String, dynamic>>>(librarySettings, (value) => pulumi.Input.encodeList<ClientLibrarySettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methodSettings': pulumi.Input.mapInputValue<List<MethodSettingsResponse>, List<Map<String, dynamic>>>(methodSettings, (value) => pulumi.Input.encodeList<MethodSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'newIssueUri': newIssueUri,
      'organization': organization,
      'protoReferenceDocumentationUri': protoReferenceDocumentationUri,
    };
  }

  factory PublishingResponse.fromMap(Map<String, dynamic> map) {
    return PublishingResponse(
      apiShortName: pulumi.Input.fromValue(map['apiShortName'] as String),
      codeownerGithubTeams: pulumi.Input.fromValue((map['codeownerGithubTeams'] as List).cast<String>()),
      docTagPrefix: pulumi.Input.fromValue(map['docTagPrefix'] as String),
      documentationUri: pulumi.Input.fromValue(map['documentationUri'] as String),
      githubLabel: pulumi.Input.fromValue(map['githubLabel'] as String),
      librarySettings: pulumi.Input.fromValue(pulumi.Input.decodeList<ClientLibrarySettingsResponse>(map['librarySettings']!, (value) => ClientLibrarySettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      methodSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<MethodSettingsResponse>(map['methodSettings']!, (value) => MethodSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      newIssueUri: pulumi.Input.fromValue(map['newIssueUri'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      protoReferenceDocumentationUri: pulumi.Input.fromValue(map['protoReferenceDocumentationUri'] as String),
    );
  }
}

