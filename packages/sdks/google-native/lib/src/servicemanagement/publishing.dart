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
      'librarySettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClientLibrarySettings>,
            List<Map<String, dynamic>>
          >(
            librarySettings,
            (value) =>
                pulumi.Input.encodeList<
                  ClientLibrarySettings,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'methodSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<MethodSettings>,
            List<Map<String, dynamic>>
          >(
            methodSettings,
            (value) =>
                pulumi.Input.encodeList<MethodSettings, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'newIssueUri': ?newIssueUri,
      'organization':
          ?pulumi.Input.mapOptionalInputValue<PublishingOrganization, String>(
            organization,
            (value) => value.wireValue,
          ),
      'protoReferenceDocumentationUri': ?protoReferenceDocumentationUri,
    };
  }

  factory Publishing.fromMap(Map<String, dynamic> map) {
    return Publishing(
      apiShortName: (() {
        final guardedValue = map['apiShortName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      codeownerGithubTeams: (() {
        final guardedValue = map['codeownerGithubTeams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      docTagPrefix: (() {
        final guardedValue = map['docTagPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationUri: (() {
        final guardedValue = map['documentationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      githubLabel: (() {
        final guardedValue = map['githubLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      librarySettings: (() {
        final guardedValue = map['librarySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClientLibrarySettings>(
            guardedValue,
            (value) => ClientLibrarySettings.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      methodSettings: (() {
        final guardedValue = map['methodSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MethodSettings>(
            guardedValue,
            (value) =>
                MethodSettings.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      newIssueUri: (() {
        final guardedValue = map['newIssueUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organization: (() {
        final guardedValue = map['organization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublishingOrganization.fromValue(guardedValue as String),
        );
      })(),
      protoReferenceDocumentationUri: (() {
        final guardedValue = map['protoReferenceDocumentationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
