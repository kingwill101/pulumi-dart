// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_library_settings.dart';
import 'method_settings.dart';
import 'publishing_organization.dart';

/// This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.
class Publishing {
  /// Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: "speech".
  final pulumi.Input<String>? apiShortName;
  /// GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
  final pulumi.Input<List<String>>? codeownerGithubTeams;
  /// A prefix used in sample code when demarking regions to be included in documentation.
  final pulumi.Input<String>? docTagPrefix;
  /// Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview
  final pulumi.Input<String>? documentationUri;
  /// GitHub label to apply to issues and pull requests opened for this API.
  final pulumi.Input<String>? githubLabel;
  /// Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
  final pulumi.Input<List<ClientLibrarySettings>>? librarySettings;
  /// A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
  final pulumi.Input<List<MethodSettings>>? methodSettings;
  /// Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103
  final pulumi.Input<String>? newIssueUri;
  /// For whom the client library is being published.
  final pulumi.Input<PublishingOrganization>? organization;
  /// Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/docs/reference/rpc
  final pulumi.Input<String>? protoReferenceDocumentationUri;

  /// Creates a new [Publishing].
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
  Publishing({
    this.apiShortName,
    this.codeownerGithubTeams,
    this.docTagPrefix,
    this.documentationUri,
    this.githubLabel,
    this.librarySettings,
    this.methodSettings,
    this.newIssueUri,
    this.organization,
    this.protoReferenceDocumentationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiShortName': ?apiShortName,
      'codeownerGithubTeams': ?codeownerGithubTeams,
      'docTagPrefix': ?docTagPrefix,
      'documentationUri': ?documentationUri,
      'githubLabel': ?githubLabel,
      'librarySettings': ?pulumi.Input.mapOptionalInputValue<List<ClientLibrarySettings>, List<Map<String, dynamic>>>(librarySettings, (value) => pulumi.Input.encodeList<ClientLibrarySettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methodSettings': ?pulumi.Input.mapOptionalInputValue<List<MethodSettings>, List<Map<String, dynamic>>>(methodSettings, (value) => pulumi.Input.encodeList<MethodSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'newIssueUri': ?newIssueUri,
      'organization': ?pulumi.Input.mapOptionalInputValue<PublishingOrganization, String>(organization, (value) => value.value),
      'protoReferenceDocumentationUri': ?protoReferenceDocumentationUri,
    };
  }

  factory Publishing.fromMap(Map<String, dynamic> map) {
    return Publishing(
      apiShortName: map['apiShortName'] == null ? null : (map['apiShortName'] as String).input(),
      codeownerGithubTeams: map['codeownerGithubTeams'] == null ? null : ((map['codeownerGithubTeams'] as List).cast<String>()).input(),
      docTagPrefix: map['docTagPrefix'] == null ? null : (map['docTagPrefix'] as String).input(),
      documentationUri: map['documentationUri'] == null ? null : (map['documentationUri'] as String).input(),
      githubLabel: map['githubLabel'] == null ? null : (map['githubLabel'] as String).input(),
      librarySettings: map['librarySettings'] == null ? null : (pulumi.Input.decodeList<ClientLibrarySettings>(map['librarySettings'], (value) => ClientLibrarySettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      methodSettings: map['methodSettings'] == null ? null : (pulumi.Input.decodeList<MethodSettings>(map['methodSettings'], (value) => MethodSettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      newIssueUri: map['newIssueUri'] == null ? null : (map['newIssueUri'] as String).input(),
      organization: map['organization'] == null ? null : (PublishingOrganization.fromValue(map['organization'] as String)).input(),
      protoReferenceDocumentationUri: map['protoReferenceDocumentationUri'] == null ? null : (map['protoReferenceDocumentationUri'] as String).input(),
    );
  }
}

