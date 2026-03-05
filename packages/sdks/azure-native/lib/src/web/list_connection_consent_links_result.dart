// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_link_definition_response.dart';

/// Result data returned by listConnectionConsentLinks.
class ListConnectionConsentLinksResult {
  /// Collection of resources
  final List<ConsentLinkDefinitionResponse>? value;

  /// Creates a new [ListConnectionConsentLinksResult].
  /// [value] Collection of resources
  ListConnectionConsentLinksResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConsentLinkDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListConnectionConsentLinksResult.fromMap(Map<String, dynamic> map) {
    return ListConnectionConsentLinksResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConsentLinkDefinitionResponse>(guardedValue, (value) => ConsentLinkDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

