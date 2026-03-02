// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_salesforce_profile_oauth2_client_credentials.dart';
import 'connection_profile_salesforce_profile_user_credentials.dart';

class ConnectionProfileSalesforceProfile {
  /// Domain for the Salesforce Org.
  final pulumi.Input<String> domain;
  /// OAuth credentials to use for Salesforce authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfileOauth2ClientCredentials>? oauth2ClientCredentials;
  /// User credentials to use for Salesforce authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfileUserCredentials>? userCredentials;

  /// Creates a new [ConnectionProfileSalesforceProfile].
  /// [domain] Domain for the Salesforce Org.
  /// [oauth2ClientCredentials] OAuth credentials to use for Salesforce authentication.
  /// [userCredentials] User credentials to use for Salesforce authentication.
  ConnectionProfileSalesforceProfile({
    required this.domain,
    this.oauth2ClientCredentials,
    this.userCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'oauth2ClientCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileSalesforceProfileOauth2ClientCredentials, Map<String, dynamic>>(oauth2ClientCredentials, (value) => value.toMap()),
      'userCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileSalesforceProfileUserCredentials, Map<String, dynamic>>(userCredentials, (value) => value.toMap()),
    };
  }

  factory ConnectionProfileSalesforceProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSalesforceProfile(
      domain: (map['domain'] as String).input(),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null ? null : (ConnectionProfileSalesforceProfileOauth2ClientCredentials.fromMap((map['oauth2ClientCredentials']! as Map).cast<String, dynamic>())).input(),
      userCredentials: map['userCredentials'] == null ? null : (ConnectionProfileSalesforceProfileUserCredentials.fromMap((map['userCredentials']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

