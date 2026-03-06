// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_domains_dns_ds_state.dart';

/// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDns {
  /// The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  final pulumi.Input<GoogleDomainsDnsDsState> dsState;

  /// Creates a new [GoogleDomainsDns].
  /// [dsState] The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  const GoogleDomainsDns({
    required this.dsState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dsState': pulumi.Input.mapInputValue<GoogleDomainsDnsDsState, String>(dsState, (value) => value.wireValue),
    };
  }

  factory GoogleDomainsDns.fromMap(Map<String, dynamic> map) {
    return GoogleDomainsDns(
      dsState: pulumi.Input.fromValue(GoogleDomainsDnsDsState.fromValue(map['dsState']! as String)),
    );
  }
}

