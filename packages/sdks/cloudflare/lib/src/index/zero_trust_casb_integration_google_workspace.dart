// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_google_workspace_google_domain_wide_delegation_service_account.dart';

class ZeroTrustCasbIntegrationGoogleWorkspace {
  /// Authenticate with a service account granted domain-wide delegation.
  final pulumi.Input<ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount?>? googleDomainWideDelegationServiceAccount;

  /// Creates a new [ZeroTrustCasbIntegrationGoogleWorkspace].
  /// [googleDomainWideDelegationServiceAccount] Authenticate with a service account granted domain-wide delegation.
  const ZeroTrustCasbIntegrationGoogleWorkspace({
    this.googleDomainWideDelegationServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleDomainWideDelegationServiceAccount': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount, Map<String, dynamic>>(googleDomainWideDelegationServiceAccount, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationGoogleWorkspace.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationGoogleWorkspace(
      googleDomainWideDelegationServiceAccount: (() { final guardedValue = map['googleDomainWideDelegationServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
