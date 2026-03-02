// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A consent link
class ConsentLinkDefinitionResponse {
  /// Display name of the parameter in the connection provider's OAuth settings
  final pulumi.Input<String>? displayName;
  /// URI for first party login
  final pulumi.Input<String>? firstPartyLoginUri;
  /// URI for the consent link
  final pulumi.Input<String>? link;
  /// Status of the link
  final pulumi.Input<String>? status;

  /// Creates a new [ConsentLinkDefinitionResponse].
  /// [displayName] Display name of the parameter in the connection provider's OAuth settings
  /// [firstPartyLoginUri] URI for first party login
  /// [link] URI for the consent link
  /// [status] Status of the link
  ConsentLinkDefinitionResponse({
    this.displayName,
    this.firstPartyLoginUri,
    this.link,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'firstPartyLoginUri': ?firstPartyLoginUri,
      'link': ?link,
      'status': ?status,
    };
  }

  factory ConsentLinkDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ConsentLinkDefinitionResponse(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      firstPartyLoginUri: map['firstPartyLoginUri'] == null ? null : (map['firstPartyLoginUri'] as String).input(),
      link: map['link'] == null ? null : (map['link'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

