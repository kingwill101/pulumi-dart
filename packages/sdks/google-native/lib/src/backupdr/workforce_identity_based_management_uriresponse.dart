// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
class WorkforceIdentityBasedManagementURIResponse {
  /// First party Management URI for Google Identities.
  final pulumi.Input<String> firstPartyManagementUri;
  /// Third party Management URI for External Identity Providers.
  final pulumi.Input<String> thirdPartyManagementUri;

  /// Creates a new [WorkforceIdentityBasedManagementURIResponse].
  /// [firstPartyManagementUri] First party Management URI for Google Identities.
  /// [thirdPartyManagementUri] Third party Management URI for External Identity Providers.
  WorkforceIdentityBasedManagementURIResponse({
    required this.firstPartyManagementUri,
    required this.thirdPartyManagementUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstPartyManagementUri': firstPartyManagementUri,
      'thirdPartyManagementUri': thirdPartyManagementUri,
    };
  }

  factory WorkforceIdentityBasedManagementURIResponse.fromMap(Map<String, dynamic> map) {
    return WorkforceIdentityBasedManagementURIResponse(
      firstPartyManagementUri: (map['firstPartyManagementUri'] as String).input(),
      thirdPartyManagementUri: (map['thirdPartyManagementUri'] as String).input(),
    );
  }
}

